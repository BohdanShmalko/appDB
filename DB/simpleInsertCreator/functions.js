const element = (tag = 'div', perent = document.body, ...attributes) => {
    const block = document.createElement(tag);
    perent.appendChild(block);
    let atr, value;
    for(let i = 0; i < attributes.length; i++){
      atr = attributes[i][0];
      value = attributes[i][1];
      block.setAttribute(atr, value);
    }
    return block;
  }
  
  const ecrane = {
    log : (text = '') => {
      if(typeof text == 'object'){
        text = JSON.stringify(text);
      }
      element().innerText = text;
    }
  }
  
  const insert = obj => {
      ecrane.log(`---------------------${obj.name}-----------------------`)
      for(let i = 0; i < obj.values.length; i++){
          ecrane.log(`INSERT INTO ${obj.name} (${obj.inserts}) VALUES (${obj.values[i]});`)
      }
  }
  
  const random = arr => {
      let rIndex = Math.floor(Math.random() * Math.floor(arr.length));
    return arr[rIndex]
  }