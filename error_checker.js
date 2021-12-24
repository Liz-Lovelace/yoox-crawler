import fs from 'fs';
import { idInCache } from './modules/utils.js';
function fields_filled(j, optional_fields = []){
  let required_fields = ['id', 'category', 'brand', 'price', 'discount_price', 'sizes', 'colors', 'photo_urls'];
  //optional fields could be anything else, really
  required_fields = required_fields.concat(optional_fields);
  let problems = [];
  for (let i = 0; i < j.length; i++){
    for (let field_name of required_fields){
      if (!j[i][field_name])
        problems.push( `#${i} doesn't have field '${field_name}'!`);
      else if (j[i][field_name].length < 2 && typeof j[i][field_name] == 'string'){
        problems.push( `#${i}'s '${field_name}' is less than 2 chars in length - ${j[i][field_name]}!\n`);
      }
    }
  }
  return problems;
}

function duplicates(j){
  let data_dump = new Set();
  let duplicates = [];
  let duplicate_ids = [];
  for (let i = 0; i < j.length; i++){
    for (let key of ['id', 'photo_urls']){
      if (data_dump.has(j[i][key])){
        duplicates.push(`#${i} has a duplicate field '${key}' - ${j[i][key]}`);
        duplicate_ids.push(i);
      }
      data_dump.add(j[i][key]);
    }
  }
  return [duplicates, duplicate_ids];
}

function simple_duplicates(arr){
  let set_arr = new Set();
  for (let i = 0; i < arr.length; i++){
    if (set_arr.has(arr[i]))
      console.log(`#${i} is a duplicate (${arr[i]})`);
    else
      set_arr.add(arr[i]);
  }
}

function full_check(j){
  let problems = [];
  problems = problems.concat(fields_filled(j));
  let dups = duplicates(j);
  problems = problems.concat(dups[0]);
  for (let i = 0; i < problems.length; i++){
    console.log(problems[i]);
  }
  console.log(`full_check done, total elements - ${j.length}`);
  console.log(`There are ${dups[0].length} duplicates`);
}

function removeByIndex(j, death_note){
  for (let i = 0; i < death_note.length; i++){
    j.splice(death_note[i] - i, 1);
  }
  return j;
}

function visualCheck(j, n = 1000){
  for (let i = 0; i < j.length; i+=n){
    console.log(`======== ${i} ========`);
    console.log(j[i]);
  }
}

function findDifferences(j, j_old){
  for (let i_old = 0; i_old < j_old.length; i_old++){
    let old_obj = j_old[i_old];
    let new_pos = idInCache(old_obj['id'], j);
    if (new_pos == null){
      console.log(`oldi ${old_obj['id']} is missing from new cache!`);
      continue;
    }
    if (j[new_pos]['in_stock'] != old_obj['in_stock']){
      console.log(`oldi ${old_obj['id']} has diff in_stock from i ${new_pos}!`);
      console.log(old_obj);
      console.log(j[new_pos]);
    }
  }
}

/*let stdin = ''
process.stdin.on('data', data => stdin += data);
process.stdin.on('end', async () => {
  let j = JSON.parse(stdin);
  full_check(j);
});
*/
async function main(){
  let j_old = await fs.promises.readFile('old_cache.json', 'utf-8');
  let j = await fs.promises.readFile('./cache.json', 'utf-8');
  j_old = JSON.parse(j_old);
  j = JSON.parse(j);
  findDifferences(j, j_old);
}
main();