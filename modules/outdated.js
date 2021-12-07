function getItemsFromCatalog(html) {
  //this operation takes by far the most time
  let $ = cheerio.load(html);
  let items = $('.itemContainer');
  let itemProperties = [];
  for (let i = 0; i < items.length; i++){
    let item = items[i];
    //soldout items require different parsing, so I'm skipping them
    if (item.attribs['class'].indexOf('soldout') != -1)
      continue;
    let item$ = cheerio.load(item);
    let properties = {}
    properties.parentCategoryId = item.attribs['data-macrocategory_id'];
    properties.parentCategoryName = item.attribs['data-macrocategory'];
    properties.categoryId = item.attribs['data-category_id'];
    properties.categoryName = item.attribs['data-category'];
    properties.id = item.attribs['data-current-cod10'];    
    
    properties.productUrl = 'https://yoox.com' + item$('.itemImg > a')['0'].attribs['href'];
    
    let img = item$('.itemImg > a > img')['0'];
    if (img.attribs['data-original']){
      properties.imageUrl = img.attribs['data-original'];
    } else if (img.attribs['src']){
      properties.imageUrl = img.attribs['src'];
    } else
      throw 'can\'t find image!!!';
    //this removes url arguments after '?'
    properties.imageUrl = properties.imageUrl.match(/(^.*)\?/)[1];

    itemProperties.push(properties);
  }
  return itemProperties;
}