import cheerio from 'cheerio';
import fs from 'fs';
import { URL } from 'url';
import { extractMaxCatalog, extractProductInfo, linksFromCatalog } from './modules/parsers.js';
import { sleep, splitIntoBatches, concatFragmentFolder, catalogLink } from './modules/utils.js';
import Fetcher from './modules/fetcher.js';

const fetcher = new Fetcher();

async function fetchAllLinks(catalog_limit = 0, categories = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]){
  let links = [];  
  for (let category of categories){
    if (catalog_limit == 0)
      catalog_limit = extractMaxCatalog(await fetchYooxHtml(catalogLink(1, category)));
    let catalog_links = [];
    for (let i = 1; i <= catalog_limit; i++)
      catalog_links.push(catalogLink(i, category));
    links = links.concat(await fetcher.fetchParse(catalog_links, linksFromCatalog, 500));
  }
  return links;
}

async function fetchAllProducts(links, batch_size = 100, shard_folder){
  let link_batches = splitIntoBatches(links, batch_size);
  console.log(link_batches.length);
  for (let batch_i = 0; batch_i < link_batches.length; batch_i++){
    let results = await fetcher.fetchParse(link_batches[batch_i], extractProductInfo, 1000);
    await fs.promises.writeFile(new URL(`./${batch_i}.json`, shard_folder), JSON.stringify(results));
  }
}

async function main(){
  console.time('getalllinks');
  let links = await fetchAllLinks(1, [9]);
  console.timeEnd('getalllinks');
  //let links = JSON.parse(await fs.promises.readFile(new URL('./data/yoox/all_links.json', import.meta.url), 'utf8'));
  console.time('fetch100');
  await fetchAllProducts(links.slice(0, 100), 100, new URL('./data/yoox/result_shards/', import.meta.url));
  console.timeEnd('fetch100');
}
main();