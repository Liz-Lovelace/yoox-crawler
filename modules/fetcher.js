import axios from 'axios';
import { sleep } from './utils.js'

export default class Fetcher {  
  async fetchYooxHtml(link){
    /*let res = await axios.get('https://app.scrapingbee.com/api/v1', {
      params: {
        'api_key': 'G7IP40YLR11ZZ111QPOANEYYPBS5E2HMSQB2YHJYXRLGS9G9VBB959TDG0GIRQT80CNWNPQQQ4F4S165',
        // this is wrong!
        'url': 'https://yoox.com', 
        'render_js': 'false',
        'premium_proxy': 'true', 
        'country_code':'ru'
      }
    });*/
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