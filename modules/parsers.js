import cheerio from 'cheerio';
import { urlFromId, filterNumbers } from './utils.js';
// this funciton finds the total number of catalogs of
// a category from a page of this category
export function extractMaxCatalog(html){
  let regex = RegExp('event_pv."sr_totalpages"] = "(.*)";');
  return parseInt(regex.exec(html)[1]);
}

// this function gets all product links from catalog page
export function linksFromCatalog(html){
  //this operation takes by far the most time
  let $ = cheerio.load(html);
  let items = $('.itemContainer');
  let links = [];
  for (let i = 0; i < items.length; i++){
    // sweeps sold out items under the rug
    if (items[i].attribs['class'].indexOf('soldout') != -1)
      continue;
    let item$ = cheerio.load(items[i]);
    let link = 'https://yoox.com' + item$('.itemImg > a')['0'].attribs['href'];
    links.push(link);
  }
  return links;
}


// this function finds all data from a product page
// by parsing json data in a certain part of it
export function extractProductInfo(html){
  let data_regex = RegExp('<script id="__NEXT_DATA__" type="application/json">(.*)</script>');
  let data = JSON.parse(data_regex.exec(html)[1]).props;
  let info = {};
  info['id'] = data['pageProps']['code10'];
  
  let title = data['initialReduxState']['itemApi']['title'];
  if (title)
    info['title'] = title.replace(/[\r\n]/g, '');
  else
    info['title'] = null;
  
  info['category'] = data['initialReduxState']['itemApi']['descriptions']['MicroCategory'];
  info['brand'] = data['initialReduxState']['itemApi']['brand']['name'];

  if (info['price'] = data['initialReduxState']['itemApi']['discountedPercentage'] > 0)
    info['price'] = data['initialReduxState']['itemApi']['priceOriginal']['transactional']['amount'];
  else
    info['price'] = data['initialReduxState']['itemApi']['priceFinal']['transactional']['amount']; 
    
  info['discount_price'] = data['initialReduxState']['itemApi']['priceFinal']['transactional']['amount'];
  
  info['sizes'] = [];
  for (let size_obj of data['initialReduxState']['itemApi']['sizes'])
     info['sizes'].push(size_obj['default']['text']);
  
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
  
  info['in_stock'] = true;

  return info;
}

function extractDept(html){
  let regex = new RegExp('<link rel="start" href="https://www.yoox.com/ru/.*dept=(.*).*>');
  return regex.exec(html)[1];
}

export function extractItemsFromCatalog(html) {
  let dept = extractDept(html);
  //this operation takes by far the most time
  let $ = cheerio.load(html);
  let items = $('.itemContainer');
  let itemProperties = [];
  for (let i = 0; i < items.length; i++){
    let in_stock = true;
    if (items[i].attribs['class'].indexOf('soldout') != -1){
      in_stock = false;
      console.log(`(extractItemsFromCatalog) sold out i ${i}`);
    }
    let item$ = cheerio.load(items[i]);
    let info = {}
    info['id'] = items[i].attribs['data-current-cod10'];    
    info['url'] = urlFromId(info['id'], dept);
    info['in_stock'] = in_stock;
    //console.log(`i ${i}, id ${info['id']} in_stock = ${info['in_stock']}`);
    //this will set the price correctly if there's no discount
    info['price'] = filterNumbers(item$('.price .fullprice').text().trim());
    info['discount_price'] = info['price'];
    if (!info['price']){
      info['discount_price'] = filterNumbers(item$('.price .oldprice-wrapper .oldprice').text().trim());
      info['price'] = filterNumbers(item$('.price .retail-newprice').text().trim());
    }
    itemProperties.push(info);
  }
  return itemProperties;
}





