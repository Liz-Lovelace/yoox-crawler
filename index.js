import cheerio from 'cheerio';
import fs from 'fs';
import { URL } from 'url';
import {fetchYooxHtml, extractMaxCatalog, sleep, extractProductInfo} from './utils.js'

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
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/shoponline#/dept=clothingwomen&gender=D&page=${i}`;
    //womens shoes
    case 1:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/shoponline#/dept=shoeswomen&gender=D&page=${i}`;
    //mens clothing
    case 2:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/shoponline#/dept=clothingmen&gender=U&page=${i}`;
    //mens shoes
    case 3:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D1%83%D0%B6%D1%87%D0%B8%D0%BD/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/shoponline#/dept=shoesmen&gender=U&page=${i}`;
    //baby girls
    case 4:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%B5%D0%B2%D0%BE%D1%87%D0%B5%D0%BA/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BC%D0%B0%D0%BB%D1%8B%D1%88%D0%B8/shoponline#/dept=collgirl_baby&gender=D&page=${i}`;
    //baby boys
    case 5:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D0%B0%D0%BB%D1%8C%D1%87%D0%B8%D0%BA%D0%BE%D0%B2/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BC%D0%B0%D0%BB%D1%8B%D1%88%D0%B8/shoponline?dept=collboy_baby#/dept=collboy_baby&gender=U&page=${i}`;
    //child girls
    case 6:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%B5%D0%B2%D0%BE%D1%87%D0%B5%D0%BA/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%B4%D0%B5%D1%82%D0%B8/shoponline/2#/dept=collgirl_kid&gender=D&page=${i}`;
    //child boys
    case 7:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D0%B0%D0%BB%D1%8C%D1%87%D0%B8%D0%BA%D0%BE%D0%B2/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%B4%D0%B5%D1%82%D0%B8/shoponline?dept=collboy_kid#/dept=collboy_kid&gender=U&page=${i}`;
    //teen girls
    case 8:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B4%D0%B5%D0%B2%D0%BE%D1%87%D0%B5%D0%BA/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D1%81%D1%82%D0%BA%D0%B8/shoponline?dept=collgirl_junior#/dept=collgirl_junior&gender=D&page=${i}`;
    //teen boys
    case 9:
      return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%BC%D0%B0%D0%BB%D1%8C%D1%87%D0%B8%D0%BA%D0%BE%D0%B2/%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D0%B8/%D0%BF%D0%BE%D0%B4%D1%80%D0%BE%D1%81%D1%82%D0%BA%D0%B8/shoponline?dept=collboy_junior#/dept=collboy_junior&gender=U&page=${i}`;
  }
}

async function processLinks(links){
  //on error, sweeps problems under the rug.....
  let fetchParse = async (link)=> extractProductInfo(await fetchYooxHtml(link));
  let results = [];
  let promises = [];
  for (let i = 0; i < links.length; i++){
    let p = fetchParse(links[i])
      .then(res => {results.push(res)})
      .catch(err=>{console.log(`link# ${i} throws - ${links[i]}`)});
    promises.push(p);
    await sleep(40);
    if (i % 1000 == 0)
      console.log(`requested link#${i} / ${links.length}`);
  }
  await Promise.all(promises);
  return results;
}

async function fetchExtractCatalogs(links){
  let fetchParse = async (link)=> linksFromCatalog(await fetchYooxHtml(link));
  let results = [];
  let promises = [];
  for (let i = 0; i < links.length; i++){
    let p = fetchParse(links[i]).then(res => {results = results.concat(res)});
    promises.push(p);
    await sleep(40);
  }
  await Promise.all(promises);
  return results;
}

async function getAllLinks(){
  let links = [];  
  let catalogs_sum = 0;
  for (let catalog_type = 0; catalog_type >= 0; catalog_type--){
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

async function main(){
  //let links = JSON.parse(await fs.promises.readFile(new URL('./first_catalogs_links.json', import.meta.url), 'utf8'));
  console.time('getlinks');
  let links = await getAllLinks();
  console.timeEnd('getlinks');
  fs.promises.writeFile(new URL('./rest_links.json', import.meta.url), JSON.stringify(links));
  /*console.time('processLinks');
  let results = await processLinks(links);
  console.timeEnd('processLinks');
  console.log(results.length + ' results gotten')
  fs.promises.writeFile(new URL('./results.json', import.meta.url), JSON.stringify(results));*/
}
main();