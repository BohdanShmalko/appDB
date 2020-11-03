const express = require('express')
const bodyParser = require('body-parser')
const path = require('path')

const createAppWithSettings = () => {
  const app = express()
  app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.setHeader("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE");
      res.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
    next();
  });

  app.use(bodyParser.json());

  app.set('view engine', 'ejs');
  app.set('views', path.join(__dirname, '../../web/views'));
  app.use(express.static('../web'));

  return app
}

module.exports = createAppWithSettings
