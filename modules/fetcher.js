import axios from 'axios';
import { sleep } from './utils.js'

export default class Fetcher {  
  async fetchYooxHtml(link){
    let res = await axios.get(link);
    return res.data;
  }
  
  async fetchParse(links, parser, delay = 1000){
    let results = [];
    let promises = [];
    for (let i = 0; i < links.length; i++){
      let p = this.fetchYooxHtml(links[i])
        .then(parser)
        .then(res => {results = results.concat(res)})
        .catch((err)=>{
          console.log(err);
          console.log(`SKIPPING #${i}, LINK = ${links[i]}`);
        });
      promises.push(p);
      await sleep(delay);
    }
    await Promise.all(promises);
    return results;
  }
  
}