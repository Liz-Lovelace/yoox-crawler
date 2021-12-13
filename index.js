import cheerio from 'cheerio';
import fs from 'fs';
import { URL } from 'url';
import { extractMaxCatalog, extractProductInfo, extractItemsFromCatalog, linksFromCatalog } from './modules/parsers.js';
import { sleep, splitIntoBatches, concatFragmentFolder, catalogLink, idInCache, updateCache } from './modules/utils.js';
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

async function patrol(batch_size = 3, catalog_limit = null, categories = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]){
  let cache_path = new URL('./cache.json',import.meta.url);
  let cache = JSON.parse(await fs.promises.readFile(cache_path, 'utf-8'));
  
  let catalog_links = []
  for (let category of categories){
    if (!catalog_limit)
      catalog_limit = extractMaxCatalog(await fetcher.fetchYooxHtml(catalogLink(1, category)));
    
    for (let i = 1; i <= catalog_limit; i++)
      catalog_links.push(catalogLink(i, category));
  }
  
  let catalog_link_batches = splitIntoBatches(catalog_links, batch_size);
  for (let batch_i = 0; batch_i < catalog_link_batches.length; batch_i++){
    let catalog_products = await fetcher.fetchParse(catalog_link_batches[batch_i], extractItemsFromCatalog, 500);
    let uncached_products = [];
    for (let i = 0; i < catalog_products.length; i++){
      let cache_index = idInCache(catalog_products[i].id, cache);
      if (cache_index != null)
        updateCache(catalog_products[i], cache);
      else {
        if (catalog_products[i].in_stock){
          uncached_products.push(catalog_products[i].url);
        }
      }
    }
    console.log(`${uncached_products.length} uncached products in batch ${batch_i}`);
    let fetched_products = await fetcher.fetchParse(uncached_products, extractProductInfo, 500);
    fetched_products.forEach(product => {cache.push(product);});
    await fs.promises.writeFile(cache_path, JSON.stringify(cache));
  }
  
}

patrol();