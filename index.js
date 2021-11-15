import cheerio from 'cheerio';
import fetch from 'node-fetch';
import fs from 'fs';
import { URL } from 'url';

function getItemsFromCatalog(html) {
  //this operation takes by far the most time
  let $ = cheerio.load(html);
  let items = $('.itemContainer');
  let itemProperties = [];
  for (let i = 0; i < items.length; i++){
    let item = items[i];
    //soldout items require different parsing, so I'm skipping them
    if (item.attribs['class'].indexOf('soldout') != -1)
      continue;
    let item$ = cheerio.load(item);
    let properties = {}
    properties.parentCategoryId = item.attribs['data-macrocategory_id'];
    properties.parentCategoryName = item.attribs['data-macrocategory'];
    properties.categoryId = item.attribs['data-category_id'];
    properties.categoryName = item.attribs['data-category'];
    properties.id = item.attribs['data-current-cod10'];    
    
    properties.productUrl = 'https://yoox.com' + item$('.itemImg > a')['0'].attribs['href'];
    
    let img = item$('.itemImg > a > img')['0'];
    if (img.attribs['data-original']){
      properties.imageUrl = img.attribs['data-original'];
    } else if (img.attribs['src']){
      properties.imageUrl = img.attribs['src'];
    } else
      throw 'can\'t find image!!!';
    //this removes url arguments after '?'
    properties.imageUrl = properties.imageUrl.match(/(^.*)\?/)[1];

    itemProperties.push(properties);
  }
  return itemProperties;
}

async function fetchWrite(path, link){
  return new Promise(async (resolve, reject)=>{
    console.log('a');
    let html = await (await fetch(link)).text();
    console.log('b');
    if (!html)
      reject('no html???');
    console.log('c');
    await fs.promises.writeFile(path, html);
    console.log('d');
    resolve();
  });
}

async function writeRawJson(){
  let items = []
  for (let i = 1; i <=544; i++){
    //this is wrong i'm pretty sure
    let html = await fs.promises.readFile(new URL('./data/catalogs/womens-shoes/fff.html', import.meta.url), 'utf8');
    let catalogItems = getItems(html);
    findBrokenItems(catalogItems);
    items = items.concat(catalogItems);
    console.log(i + ' ' + i / 544 * 100 + '%')
  }
  console.log(items.length);
  console.log('writing...');
  await fs.promises.writeFile(new URL('./raw.json', import.meta.url), JSON.stringify(items));
  console.log('done!');
}

async function main() {
  let all_items = [];
  for (let i = 1; i <= 544; i++){
    let catalogHtml = await fs.promises.readFile(new URL(`./data/catalogs/womens-shoes/${i}.html`, import.meta.url), 'utf8');
    let raw_items = getItems(catalogHtml);
    let ABAi_items = rawToABAi(raw_items);
    all_items = all_items.concat(ABAi_items);
    if (i % 10 == 0)
      console.log(`${i}  ${(i/544*100).toFixed(1)}%`)
  }
  let all_items_str = JSON.stringify(all_items);
  await fs.promises.writeFile(new URL('./unchecked_items.json', import.meta.url), all_items_str);
}

function extractProductInfo(html){
  let data_regex = RegExp('<script id="__NEXT_DATA__" type="application/json">(.*)</script>');
  let data = JSON.parse(data_regex.exec(html)[1]).props;
  let info = {};
  // 1. Артикул
  info['id'] = data['pageProps']['code10'];
  // 2. Название
  if (data['initialReduxState']['itemApi']['title'])
    info['title'] = data['initialReduxState']['itemApi']['title'].replace('\n', '');
  else
    info['title'] = null;
  // 3. Категория
  info['category'] = data['initialReduxState']['itemApi']['descriptions']['MicroCategory'];
  // 4. Бренд
  info['brand'] = data['initialReduxState']['itemApi']['brand']['name'];
  // 5. Цена от поставщика
    //not found
  // 6. Цена от поставщика со скидкой
    //not found
  // 7. Цена в магазине
  if (info['price'] = data['initialReduxState']['itemApi']['discountedPercentage'] > 0)
    info['price'] = data['initialReduxState']['itemApi']['priceOriginal']['transactional']['amount'];
  else
    info['price'] = data['initialReduxState']['itemApi']['priceFinal']['transactional']['amount']; 
    
  // 8. Цена в магазине со скидкой
  info['discount_price'] = data['initialReduxState']['itemApi']['priceFinal']['transactional']['amount'];
  // 9. Размеры
  info['sizes'] = [];
  for (let size_obj of data['initialReduxState']['itemApi']['sizes'])
     info['sizes'].push(size_obj['default']['text']);
  // 10. Цвета
  info['colors'] = [];
  info['photo_urls'] = {};
  for (let color_obj of data['initialReduxState']['itemApi']['colors']){
    info['colors'].push(color_obj['name']);
    // 11. Фото
    let formats = color_obj['imageFormats'];
    let color_id = color_obj['code10'];
    info['photo_urls'][color_id] = [];
    for (let i = 0; i < formats.length; i++){
      if (formats[i].slice(0, 2) == '14')
        info['photo_urls'][color_id].push(`https://www.yoox.com/images/items/${color_id.slice(0,2)}/${color_id}_${formats[i]}.jpg`);
    }
  }
  // 12. ID товара на сайте доноре
    //???
  // 13. Статус - в наличии или нет
    //todo: implement
  // 14. Дата и время добавления
    //todo: implement
  info['discovery_time'] = Date.now() - 15*24*60*60000 - 293;
  // 15. Дата и время обновления
    //todo: implement
  info['update_time'] = Date.now() - 13*60000 - 842;
  // 16. Дата и время отправки
    //todo: implement
  info['send_time'] = Date.now();
    //todo: implement
  // 17. Сортировка. (порядок сортировки, выставляется автоматически при парсинге)
    // ???
  // 18. Коллекция
    //not found
  return info;
}
async function test(){
  let html = await fs.promises.readFile(new URL('./data/yoox/sweater.html', import.meta.url), 'utf-8');
  let info = extractProductInfo(html);
  console.log(info);
}
test();