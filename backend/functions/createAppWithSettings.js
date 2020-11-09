const 
  express = require('express'),
  bodyParser = require('body-parser'),
  path = require('path'),
  session = require('express-session'),
  redisStorage = require('connect-redis')(session),
  redis = require('redis'),
  client = redis.createClient()

  const sessionSettings = {

  }

    // {
  //   store: new redisStorage({
  //     host: '127.0.0.1',
  //     port: 6379,
  //     client: client,
  //   }),
  //   secret: 'gradebook',
  //   saveUninitialized: true,
  // }

const createAppWithSettings = () => {
  const app = express()
  app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.setHeader("Access-Control-Allow-Methods", "GET, PUT, POST, DELETE");
      res.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
    next();
  });

  app.use(bodyParser.json());

  
  app.use(
    session({
      store: new redisStorage({
        host: '127.0.0.1',
        port: 6379,
        client: client,
      }),
      secret: 'gradebook',
      saveUninitialized: true,
    })
  )



  return {app, client}
}

module.exports = createAppWithSettings
