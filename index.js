import cheerio from 'cheerio';
import fs from 'fs';
import { URL } from 'url';
import axios from 'axios';
import {extractMaxCatalog, sleep, extractProductInfo} from './utils.js'

function linksFromCatalog(html) {
  //this operation takes by far the most time
  let $ = cheerio.load(html);
  let items = $('.itemContainer');
  let links = [];
  for (let i = 0; i < items.length; i++){
    let item$ = cheerio.load(items[i]);
    let link = 'https://yoox.com' + item$('.itemImg > a')['0'].attribs['href'];
    links.push(link);
  }
  return links;
}

function catalogLink(i){
  //womens clothing
  return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/shoponline#/dept=clothingwomen&gender=D&page=${i}`;
  //womens shoes
  //return `https://www.yoox.com/ru/%D0%B4%D0%BB%D1%8F%20%D0%B6%D0%B5%D0%BD%D1%89%D0%B8%D0%BD/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/shoponline#/dept=shoeswomen&gender=D&page=${i}`;
}

async function processLinks(links){
  let fetchParse = async (link)=> extractProductInfo((await axios.get(link)).data);
  let results = [];
  let promises = [];
  for (let i = 0; i < links.length; i++){
    let p = fetchParse(links[i]).then(res => {results.push(res)});
    promises.push(p);
    await sleep(40);
  }
  await Promise.all(promises);
  return results;
}

async function fetchExtractCatalogs(links){
  let fetchParse = async (link)=> linksFromCatalog((await axios.get(link)).data);
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

async function test(){
  let max_catalog
  let catalog_links = [];
  for (let i = 1; i < 101; i++)
    catalog_links.push(catalogLink(i));
  console.time('fetchExtractCatalogs');
  let links = await fetchExtractCatalogs(catalog_links);
  console.timeEnd('fetchExtractCatalogs');
  console.log(links.length + ' links extracted.');
  
  console.time('processLinks');
  let results = await processLinks(links);
  console.log(results);
  console.timeEnd('processLinks');
  console.log(results.length + ' results gotten')
}

test()
