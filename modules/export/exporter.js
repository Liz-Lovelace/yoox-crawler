import { Sequelize, QueryTypes, DataTypes } from 'sequelize';
import fs from 'fs';
import initProductVariation from './product_variations.js';
import initProduct from './products.js';
//TODO: move password to separate file

const sequelize = new Sequelize('mod', 'mod', 'secret', {
  host: 'localhost',
  //host: 'mod.uz',
  dialect:'postgres',
});

async function main(){
  let Product = initProduct(sequelize, DataTypes);
  let ProductVariation = initProductVariation(sequelize, DataTypes);
  let cache = JSON.parse(await fs.promises.readFile(new URL('../../cache.json', import.meta.url), 'utf-8'));
  
  //let products = await Product.findAll();
  
  let i = 0;
  let p = Product.build({
    donor_id: null,
    donor_category_id: null,
    donor_product_id: cache[i].id,
    meta_title: {'en': cache[i].title},
    meta_description: null,
    meta_keywords: null,
    name: {'en': cache[i].title},
    slug: null,
    description: null,
    employee_id: null,
    brand_id: '8',
    //TODO: map this to the cache[].category
    category_id: null,
    is_active: true,
    is_draft: false,
    is_prepaid: false,
    createdAt: cache[i]['discovery_time'],
    updatedAt: cache[i]['update_time'],
  });
  //console.log(p);
  await p.save();
  //const products = await sequelize.query('SELECT * FROM "products"', { type: QueryTypes.SELECT });
  await sequelize.close();
}
main();
