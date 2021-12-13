import fs from 'fs';

export async function sleep(ms){
  return new Promise(resolve => setTimeout(resolve, ms));
}

export function filterNumbers(str){
  return str.replace(/\D/g, '');
}

export function splitIntoBatches(arr, batch_size){
  let batches = [];
  for (let i = 0; i < arr.length; i+= batch_size)
    batches.push(arr.slice(i, i + batch_size));
  return batches;
}

// this function concats all arrays from json files 
// in a folder and returns them as one arrays     
export async function concatFragmentFolder(folder_url){
  let results = [];
  let shard_names = await fs.promises.readdir(folder_url);
  for (let i = 0; i < shard_names.length - 1; i++){
    let shard = await fs.promises.readFile(new URL(`./${i}.json`, folder_url), 'utf8');
    results = results.concat(JSON.parse(shard));
  }
  return results;
}

export function catalogLink(i, type){
  console.assert(0 <= type <= 9);
  let types = {
    /*womens clothing*/ 0: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/shoponline/${i}#/dept=clothingwomen&gender=D&page=${i}`,
    /*womens shoes*/    1: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/shoponline/${i}#/dept=shoeswomen&gender=D&page=${i}`,
    /*mens clothing*/   2: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/shoponline/${i}#/dept=clothingmen&gender=U&page=${i}`,
    /*mens shoes*/      3: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/shoponline/${i}#/dept=shoesmen&gender=U&page=${i}`,
    /*baby girls*/      4: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%B5%D0%B2%D0%BE%D1%87%D0%B5%D0%BA/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BC%D0%B0%D0%BB%D1%8B%D1%88%D0%B8/shoponline/${i}#/dept=collgirl_baby&gender=D&page=${i}`,
    /*baby boys*/       5: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D0%B0%D0%BB%D1%8C%D1%87%D0%B8%D0%BA%D0%BE%D0%B2/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BC%D0%B0%D0%BB%D1%8B%D1%88%D0%B8/shoponline/${i}#/dept=collboy_baby&gender=U&page=${i}`,
    /*child girls*/     6: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%B5%D0%B2%D0%BE%D1%87%D0%B5%D0%BA/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%B4%D0%B5%D1%82%D0%B8/shoponline/${i}#/dept=collgirl_kid&gender=D&page=${i}`,
    /*child boys*/      7: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D0%B0%D0%BB%D1%8C%D1%87%D0%B8%D0%BA%D0%BE%D0%B2/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%B4%D0%B5%D1%82%D0%B8/shoponline/${i}#/dept=collboy_kid&gender=U&page=${i}`,
    /*teen girls*/      8: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%B5%D0%B2%D0%BE%D1%87%D0%B5%D0%BA/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D1%81%D1%82%D0%BA%D0%B8/shoponline/${i}#/dept=collgirl_junior&gender=D&page=${i}`,
    /*teen boys*/       9: `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D0%B0%D0%BB%D1%8C%D1%87%D0%B8%D0%BA%D0%BE%D0%B2/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D1%81%D1%82%D0%BA%D0%B8/shoponline/${i}#/dept=collboy_junior&gender=U&page=${i}`,
  }
  return types[type];
}

export function idInCache(id, cache){
  for (let i = 0; i < cache.length; i++)
    if (cache[i].id == id){
      return i;
    } 
  return null;
}

export function updateCache(product, cache){ 
  //this is inefficient, but it's important to get the index right.
  let index = idInCache(product.id, cache);
  if (index == null){
    console.log('(updateCache) product isn\'t in cache!');
    console.log(product);
    return cache;
  }
  if (product['in_stock'] == true){
    cache[index]['price'] = product['price'];
    cache[index]['discount_price'] = product['discount_price'];
  }
  cache[index]['in_stock'] = product['in_stock'];
  return cache;
}

export function urlFromId(id, dept){
  return `https://www.yoox.com/ru/${id}/item#cod10=&dept=${dept}`;
}
