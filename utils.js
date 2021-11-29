import axios from 'axios';
import fetch from 'node-fetch';
import fs from 'fs';
export async function gatherResultFragments(folder_url){
  let results = []
  let shard_names = await fs.promises.readdir(folder_url);
  for (let i = 0; i < shard_names.length - 1; i++){
    let shard = await fs.promises.readFile(new URL(`./${i}.json`, folder_url), 'utf8');
    results = results.concat(JSON.parse(shard));
  }
  return results;
}


export function splitIntoBatches(arr, batch_size){
  let batches = [];
  for (let i = 0; i < arr.length; i+= batch_size){
    batches.push(arr.slice(i, i + batch_size));
  }
  return batches;
}

export function extractMaxCatalog(html){
  let regex = RegExp('event_pv."sr_totalpages"] = "(.*)";');
  //this lags behind by like 10 pages for some reason!
  return parseInt(regex.exec(html)[1]);
}

export async function sleep(ms){
  return new Promise(resolve => setTimeout(resolve, ms));
}

export async function fetchYooxHtml(link){
  return (await axios.get(link)).data;
}

export function extractProductInfo(html){
  let data_regex = RegExp('<script id="__NEXT_DATA__" type="application/json">(.*)</script>');
  let data = JSON.parse(data_regex.exec(html)[1]).props;
  let info = {};
  // 1. Артикул
  info['id'] = data['pageProps']['code10'];
  
  // 2. Название
  let title = data['initialReduxState']['itemApi']['title'];
  if (title)
    info['title'] = title.replace(/[\r\n]/g, '');
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
    //TODO: implement
  
  // 14. Дата и время добавления
    //todo: implement
  info['discovery_time'] = Date.now();
  
  // 15. Дата и время обновления
    //todo: implement
  info['update_time'] = Date.now();
  
  // 16. Дата и время отправки
    //todo: implement
  info['send_time'] = Date.now();
  
  // 17. Сортировка. (порядок сортировки, выставляется автоматически при парсинге)
    // ???
  // 18. Коллекция
    //not found
  return info;
}
