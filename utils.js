import fetch from 'node-fetch';

export function extractMaxCatalog(html){
  let regex = RegExp('event_pv."sr_totalpages"] = "(.*)";');
  //this lags behind by like 10 pages for some reason!
  return parseInt(regex.exec(html)[1]);
}

export async function sleep(ms){
  return new Promise(resolve => setTimeout(resolve, ms));
}

export async function fetchYooxHtml(link){
  let fetch_obj = {headers: { 
    'accept-language': 'en,ru;q=0.9',
    'user-agent':' Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36',
    'cookie':'OLDVISIT=1; optimizelyEndUserId=oeu1632665410225r0.9030597373172182; LAYERFIRSTVISIT=LAYERFIRSTVISIT=True; tc_YAB_test=UpgradeV1vsV2_B; _ga=GA1.2.505534235.1632665412; _gcl_au=1.1.1477642935.1632665412; tmr_lvid=b1822f2bc0f70192a81c9d308af95582; tmr_lvidTS=1632665412549; _cs_c=1; _scid=53f11ce3-c2cc-4e14-8c56-e75a9c04b374; yOrbRD=guid%3Dd6aeebc9-1c7c-401c-a99a-feaa31f50203; ORA_FPC=id=b27a30ca-4198-4ef9-8a64-596451f7119f; NAVIGATED=1; _ym_uid=1632665438508555556; _ym_d=1632665438; TCPID=12193223154425729134; TC_PRIVACY=0@014%7C34%7C645@2%2C1%2C3@4@1632944140470%2C1632944140470%2C1666640140470@; TC_PRIVACY_CENTER=2%2C1%2C3; bn_u=6929042548877270550; bn_conditioncode=d%26g%26s; fita.sid.yoox=N0r1ULYv1gVoRZ9ABqcZS6Ak_XwGEQG4; _sctr=1|1636923600000; WRUIDCD=3553926629245092; TPID=217049; USERINFO=SESSO=D&SESSOBAMBINO=D; ABTEST=%7b%22AbTests%22%3a%5b%7b%22Name%22%3a%22SmsMultiChannel%22%2c%22Mode%22%3a%22Auto%22%2c%22Enabled%22%3a%22on%22%2c%22Threshold%22%3a%22100%22%7d%2c%7b%22Name%22%3a%22SrRecommendations%22%2c%22Mode%22%3a%22Auto%22%2c%22Enabled%22%3a%22on%22%2c%22Threshold%22%3a%22100%22%7d%2c%7b%22Name%22%3a%22myooxNew%22%2c%22Mode%22%3a%22Auto%22%2c%22Enabled%22%3a%22on%22%2c%22Threshold%22%3a%22100%22%7d%2c%7b%22Name%22%3a%22OnePageCheckout%22%2c%22Mode%22%3a%22Auto%22%2c%22Enabled%22%3a%22on%22%2c%22Threshold%22%3a%22100%22%7d%2c%7b%22Name%22%3a%22OPCSummary%22%2c%22Mode%22%3a%22Auto%22%2c%22Enabled%22%3a%22on%22%2c%22Threshold%22%3a%22100%22%7d%5d%2c%22Reloaded%22%3afalse%2c%22ReloadedTime%22%3anull%7d; VISIT=TSKAY=EC8B80D0&NAZIONE=RUSSIAN+FEDERATION&ID%5FNAZIONE=83&ID%5FMERCATO=57&SIGLA%5FVALUTA=%d1%80%d1%83%d0%b1&CURRENCYCODE=RUB&REFERENCE%5FCURRENCYCODE=RUB&ID%5FMERCATO%5FPER%5FLISTINO=79&MERCATO%5FPATH=%2fru%2f&VALUTA%5FID=40&DYN%5FPATH=%2fru%2f&SITE%5FCODE=YOOX_RU&ANONYMOUS%5FCHECKOUT=True&NAZIONE%5FISO=RU&WAREHOUSES=2715%2c4800%2c271&TWOLETTERISOCODE=RU&LASTQUERY=; SESSIONS=ID%5FPARTNER=217049%7c0&FIRSTTIMEUSER=0; YEDGESESSION=93054917db540000f1659661a9020000768f0700; AKA_A2=A; bm_sz=9F7E2B32485FA547CBEC57DBD971FAF8~YAAQkwVJF64BWy99AQAAETh+Mw3VTv/hxKbwlUngwwwht+GLCO/X2bPwnH3lQ95PKyFxZ4aCf0HxTnpX5pvuOfr+IonKNK2odc9J3JBMpLUxGwTSfg57ttTD4/WmoE6zWOK/fHqWid80I1cI5AR51nwIRicPPckDhXJH8UdyySxE8ToIwaYShvVMdqsqiob82L2KzgIgguNQd0Gf8k2pDnQT9XRbKPgdetKxk9seLuuxHR4uHF8uuCGg/fMLA9wZE8k4XfQaX5hmFKPx0md9g+YvZXtBbUudl763v/+P6C95~3749688~4277828; bm_mi=9969DFBD2FEFEF1DEF6A90FC56B4C772~wRVVX8h83li6kEvPpT2KTF9BGxYyUI+7HsXxMJoqdvuqKAf12cHkkdNgNkuAByw8WUJbJFUL3Jt+or102dAmM6bJT64C7A0DPuJAazWos2kRqz/4Bccqe1lXQIAh679Mmf2RZZH/oQmr1h/6yP0IHe2bxijVy8oi7pYJ0JYvahl55tuZ+CT+Ngn9TLeLa89mWdQ8mRtomVc8KVOppveBrVQ+Dlqr337ZLjMtELVay9egC3k/mZqPLEU3JCeOc04E3PV8/D+WxYYGWmqda4qQAzXiiSDSYr99tZOUeiaQXTrCNJuYuTk54BFNM7LZwwgx6LCuQM2jY71qBwlrkSGo55oJVYNYOG8zyZKbZbuw5oCEhhu06P2yAQut6GdVLGINHDuHI7NVQjTpxS+lAm/E1Q==; rxVisitor=1637246451317F5R0MQJ8BLPAJ8K0G2GGISG2D3PSCH99; dtSa=-; dtLatC=7; _abck=1FBB1F87502CB0216DD333B3DF2C027A~0~YAAQkwVJF/MBWy99AQAA/0h+MwYSsjAMmnSMjdhFOS8pVZQnTsukQ56pFmKsrDPNH7xOdEAGT/2nDP74oxYSFTjtSRiVdJYxVAtGzhSyLNlBAGx/ESjamFdXftp8Pa19a9bU0FPg9fHWMh/cWZrlDSjzYszh4tPatrEGKD2ZXd9J10NesdMv2ca9R9P87X8EJU/e/jWBAVdaRqQ3aS627eACFqjhsxyaM/YDADV6Ezegrjvuccu0UW4hiLsSJLXcMzY0NJ3JpbrD/dJpWWWHnGTAb2thgp9emUL0ZyXPnCMQEXrmc0/MCRLX5VV6wKU003xcyHftj2FiV+i7fdzYUiVUuNbI/LaqhoE/JSZlt89rVA4JcCx9Qb8Ff9vpOv+/ED/Qa1MBCMetFj+ZV8e+J53cFXaS~-1~-1~1637249971; isp=; _uetsid=8a3ed150487d11ecbfb53d18c250bb1b; _uetvid=7733d7f01ed311ecb10737902f130506; PARTNER=Newsletter; _gid=GA1.2.2015583589.1637246457; tmr_detect=1%7C1637246457445; _ym_isad=1; cto_bundle=K_7ChV9XaXJwbEt5MEZ4SjhpZ0dRJTJCdkVRU0x0YmRuMHhWcHFzZFB6VjFPVUMzYU41SUlPUHlkWFY3djJaTTNaWTI5SUo3N3hCRWlOaGM2OFVuMG9RM3V6VFBJQ0NidHc1emw1Tm5ZY3lrT0lnR0klMkZJaEdYaUFlNEtnQ2F6Z0lzdVJZRWdtMDJKME9NbVlWNlE0cTZwTWMxa1R3JTNEJTNE; _ym_visorc=w; _cs_cvars=%7B%221%22%3A%5B%22Subsection%22%2C%22women%22%5D%2C%222%22%3A%5B%22Country%20Code%22%2C%22RU%22%5D%2C%223%22%3A%5B%22Language%20Code%22%2C%22RU%22%5D%2C%224%22%3A%5B%22Currency%22%2C%22RUB%22%5D%2C%225%22%3A%5B%22Session%20TP%22%2C%220%22%5D%2C%226%22%3A%5B%22Historical%20TP%22%2C%22217049%22%5D%2C%227%22%3A%5B%22AB%20Test%22%2C%22SmsMultiChannel_ON%2CSrRecommendations_ON%2CmyooxNew_ON%2COnePageCheckout_ON%2COPCSummary_ON%22%5D%2C%228%22%3A%5B%22Gender%22%2C%22D%22%5D%2C%229%22%3A%5B%22Page%22%2C%22women%3AHome%22%5D%2C%2210%22%3A%5B%22Page%20Type%22%2C%22Home%22%5D%2C%2219%22%3A%5B%22Area%20Dept%22%2C%22women%22%5D%2C%2220%22%3A%5B%22Env%20Channel%22%2C%22web%22%5D%7D; _cs_id=f4bc1b45-c2da-a36e-e5cf-efa7c0e5c60c.1632665413.22.1637246458.1637246458.1.1666829413706; _cs_s=1.1.0.1637248258893; __CT_Data=gpv=119&ckp=tld&dm=yoox.com&apv_20_www46=137&cpv_20_www46=120&rpv_20_www46=15; WRIgnore=true; ak_bmsc=5772AEB4486D0D1EC18A3E88E28B42B5~000000000000000000000000000000~YAAQkwVJF3QCWy99AQAAbWN+Mw2b9+qbYqUCmq/PpKsV0PaoG2HmxsdfdCDT3pieeK4wdr4mnPXrZo9d7+ivkpNM4wtZ1fT7XKU1pGjD7Q/wkBGy9+g3LZsMTFqaPVESAtq0CVojuvXKjRg4mVX3bHanixcjcjVurPEBP8S4uzaKkk79jX5awpp4MBZG0eV6KjZxYh0l02gyR38SS4ki7kNNHMJ2Z4nAfSDWh37D7kPF4sfGMxI989+xMwkQELdVDGgpky3714Ts4EWzN5fPTAB7oNvte2vNoMkDPUOlap+Z0VIQ33SO3514+P83LUpOADHCX9+c47L/+8ztc8VhZ/Fr/r1CEclkiw+dGwAEa80r5WwreFsS3ujgr1azjiKBeCjYrybviLlFw9Dpb9dY8IKiDALFNdAdK4MCbF6rnOtay9JNpG5Xwgv+0qe1Afa3nXBkHL5609I+RX6aNBFl+8p6L+b0uvLgbzze9/dYH+Qf+rqk3Fg=; dtCookie=1$T6D44F80MOAK2GVTOJGH73E2BCUO22Q5|8caa4d99ff5d944a|0; bm_sv=FFD64BBB21CCB415DEEC9A2E486C327B~LXS1NqWzsZH6Mj/pULIKiegb6oiOC2r+bB8mAaO7ynyZhq8mwrwZP5xMEgtn8fwQ/LHp1XDRS0A5RRmmhN6+WvmgDywp2w/VA9G5p8sxrfIMQA4YMEDzso2vur/5XsElOcaCJQMANM4NO3GabgO4jg==; rxvt=1637248354420|1637246451326; dtPC=1$446451292_572h-vDNAEDDEECQHCPRKFPJOKAFBMHPQPRBDH-0; RT="z=1&dm=yoox.com&si=f0afbcd5-f234-457f-a3c8-6c627411309b&ss=kw529ii8&sl=1&tt=28n8&bcn=%2F%2F02179919.akstat.io%2F&ld=28nb&ul=28ne"; tmr_reqNum=589',
  }};
  let res = await fetch(link, fetch_obj);
  return await res.text();
}

export function extractProductInfo(html){
  let data_regex = RegExp('<script id="__NEXT_DATA__" type="application/json">(.*)</script>');
  let data = JSON.parse(data_regex.exec(html)[1]).props;
  let info = {};
  // 1. Артикул
  info['id'] = data['pageProps']['code10'];
  
  // 2. Название
  let title = data['initialReduxState']['itemApi']['title'];
  if (title)
    info['title'] = title.replace(/[\r\n]/g, '');
  else
    info['title'] = null;
  
  // 3. Категория
  info['category'] = data['initialReduxState']['itemApi']['descriptions']['MicroCategory'];
  
  // 4. Бренд
  info['brand'] = data['initialReduxState']['itemApi']['brand']['name'];
  
  // 5. Цена от поставщика
    //not found
  // 6. Цена от поставщика со скидкой
    //not found
  
  // 7. Цена в магазине
  if (info['price'] = data['initialReduxState']['itemApi']['discountedPercentage'] > 0)
    info['price'] = data['initialReduxState']['itemApi']['priceOriginal']['transactional']['amount'];
  else
    info['price'] = data['initialReduxState']['itemApi']['priceFinal']['transactional']['amount']; 
    
  // 8. Цена в магазине со скидкой
  info['discount_price'] = data['initialReduxState']['itemApi']['priceFinal']['transactional']['amount'];
  
  // 9. Размеры
  info['sizes'] = [];
  for (let size_obj of data['initialReduxState']['itemApi']['sizes'])
     info['sizes'].push(size_obj['default']['text']);
  
  // 10. Цвета
  info['colors'] = [];
  info['photo_urls'] = {};
  for (let color_obj of data['initialReduxState']['itemApi']['colors']){
    info['colors'].push(color_obj['name']);
    // 11. Фото
    let formats = color_obj['imageFormats'];
    let color_id = color_obj['code10'];
    info['photo_urls'][color_id] = [];
    for (let i = 0; i < formats.length; i++){
      if (formats[i].slice(0, 2) == '14')
        info['photo_urls'][color_id].push(`https://www.yoox.com/images/items/${color_id.slice(0,2)}/${color_id}_${formats[i]}.jpg`);
    }
  }
  
  // 12. ID товара на сайте доноре
    //???
  // 13. Статус - в наличии или нет
    //TODO: implement
  
  // 14. Дата и время добавления
    //todo: implement
  info['discovery_time'] = Date.now();
  
  // 15. Дата и время обновления
    //todo: implement
  info['update_time'] = Date.now();
  
  // 16. Дата и время отправки
    //todo: implement
  info['send_time'] = Date.now();
  
  // 17. Сортировка. (порядок сортировки, выставляется автоматически при парсинге)
    // ???
  // 18. Коллекция
    //not found
  return info;
}
