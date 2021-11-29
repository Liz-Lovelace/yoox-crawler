import cheerio from 'cheerio';
import fs from 'fs';
import { URL } from 'url';
import {fetchYooxHtml, extractMaxCatalog, sleep, extractProductInfo, splitIntoBatches, gatherResultFragments} from './utils.js'

function linksFromCatalog(html) {
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

function catalogLink(i, type = 0){
  console.assert(0 <= type <= 9);
  switch (type){
    //womens clothing
    case 0:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/shoponline/${i}#/dept=clothingwomen&gender=D&page=${i}`;
    //womens shoes
    case 1:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/shoponline/${i}#/dept=shoeswomen&gender=D&page=${i}`;
    //mens clothing
    case 2:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/shoponline/${i}#/dept=clothingmen&gender=U&page=${i}`;
    //mens shoes
    case 3:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/shoponline/${i}#/dept=shoesmen&gender=U&page=${i}`;
    //baby girls
    case 4:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%B5%D0%B2%D0%BE%D1%87%D0%B5%D0%BA/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BC%D0%B0%D0%BB%D1%8B%D1%88%D0%B8/shoponline/${i}#/dept=collgirl_baby&gender=D&page=${i}`;
    //baby boys
    case 5:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D0%B0%D0%BB%D1%8C%D1%87%D0%B8%D0%BA%D0%BE%D0%B2/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BC%D0%B0%D0%BB%D1%8B%D1%88%D0%B8/shoponline/${i}#/dept=collboy_baby&gender=U&page=${i}`;
    //child girls
    case 6:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%B5%D0%B2%D0%BE%D1%87%D0%B5%D0%BA/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%B4%D0%B5%D1%82%D0%B8/shoponline/${i}#/dept=collgirl_kid&gender=D&page=${i}`;
    //child boys
    case 7:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D0%B0%D0%BB%D1%8C%D1%87%D0%B8%D0%BA%D0%BE%D0%B2/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%B4%D0%B5%D1%82%D0%B8/shoponline/${i}#/dept=collboy_kid&gender=U&page=${i}`;
    //teen girls
    case 8:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%B5%D0%B2%D0%BE%D1%87%D0%B5%D0%BA/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D1%81%D1%82%D0%BA%D0%B8/shoponline/${i}#/dept=collgirl_junior&gender=D&page=${i}`;
    //teen boys
    case 9:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D0%B0%D0%BB%D1%8C%D1%87%D0%B8%D0%BA%D0%BE%D0%B2/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D1%81%D1%82%D0%BA%D0%B8/shoponline/${i}#/dept=collboy_junior&gender=U&page=${i}`;
  }
}

async function fetchExtractCatalogs(links){
  let fetchParse = async function(catalog_link){
      let html = await fetchYooxHtml(catalog_link);
      let result_links = linksFromCatalog(html);
      return result_links;
    }
  let results = [];
  let promises = [];
  for (let i = 0; i < links.length; i++){
    let p = fetchParse(links[i]).then(res => {results = results.concat(res);});
    promises.push(p);
    await sleep(700);
  }
  await Promise.all(promises);
  return results;
}

async function getAllLinks(){
  let links = [];  
  let catalogs_sum = 0;
  for (let catalog_type = 9; catalog_type >= 0; catalog_type--){
    let catalog_limit = extractMaxCatalog(await fetchYooxHtml(catalogLink(1, catalog_type)));
    catalogs_sum += catalog_limit;
    console.log(`there are ${catalog_limit} catalogs of type ${catalog_type}`);
    let catalog_links = [];
    for (let i = 1; i <= catalog_limit; i++)
      catalog_links.push(catalogLink(i, catalog_type));
    console.time(`fetched ${catalog_limit} catalogs of type ${catalog_type}`);
    links = links.concat(await fetchExtractCatalogs(catalog_links));
    console.timeEnd(`fetched ${catalog_limit} catalogs of type ${catalog_type}`);
  }
  console.log(links.length + ' links found.');
  console.log(`There are ${catalogs_sum} catalogs in total`)
  return links;
}

async function processLinks(links){
  //on error, sweeps problems under the rug.....
  let fetchParse = async (link)=> extractProductInfo(await fetchYooxHtml(link));
  let results = [];
  let promises = [];
  for (let i = 0; i < links.length; i++){
    let p = fetchParse(links[i])
      .then(res => {results.push(res)})
      .catch(err=>{console.log(`link# ${i} throws - ${links[i]}`); console.log(err)});
    promises.push(p);
    await sleep(700);
  }
  await Promise.all(promises);
  return results;
}

async function main(){
  let links = JSON.parse(await fs.promises.readFile(new URL('./data/yoox/all_links.json', import.meta.url), 'utf8'));
  let batch_size = 100;
  let link_batches = splitIntoBatches(links, batch_size);
  for (let batch_i = 0; batch_i <= link_batches.length; batch_i++){
    console.time(`fetched ${batch_size} links, batch ${batch_i} / ${link_batches.length}`);
    let results = await processLinks(link_batches[batch_i]);
    console.timeEnd(`fetched ${batch_size} links, batch ${batch_i} / ${link_batches.length}`);
    console.log(results.length + ' results gotten')
    fs.promises.writeFile(new URL(`./data/yoox/result_shards/${batch_i}.json`, import.meta.url), JSON.stringify(results));
  }
}

async function test(){
  let results = await gatherResultFragments(new URL('./data/yoox/result_shards/', import.meta.url));
  await fs.promises.writeFile(new URL('./data/yoox/result_15000.json', import.meta.url), JSON.stringify(results));
}
test();