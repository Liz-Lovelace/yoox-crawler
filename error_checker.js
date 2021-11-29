import fs from 'fs';

function fields_filled(j, optional_fields = []){
  let required_fields = ['id', 'category', 'brand', 'price', 'discount_price', 'sizes', 'colors', 'photo_urls', 'discovery_time', 'update_time', 'send_time'];
  //optional fields could be anything else, really
  required_fields = required_fields.concat(optional_fields);
  let problems = [];
  for (let i = 0; i < j.length; i++){
    for (let field_name of required_fields){
      if (!j[i][field_name])
        problems.push( `#${i} doesn't have field '${field_name}'!`);
      else if (j[i][field_name].length < 2 && typeof j[i][field_name] == 'string')
        problems.push( `#${i}'s '${field_name}' is less than 2 chars in length - ${j[i][field_name]}!\n`);
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

let stdin = ''
process.stdin.on('data', data => stdin += data);
process.stdin.on('end', async () => {
  let j = JSON.parse(stdin);
  console.log(j.length)
  j = removeByIndex(j, duplicates(j)[1]);
  full_check(j);
  console.log(j.length)
  await fs.promises.writeFile(new URL('./goood.json', import.meta.url), JSON.stringify(j));
});
