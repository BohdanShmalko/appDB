const {Svidko} = require('shvidko'),
      gradebook = require('./requests/gradebook/API'),
      marks = require('./requests/marks/API'),
      schedule = require('./requests/schedule/API'),
      login = require('./requests/login/API'),
      {Pool} = require("pg")

const db = new Pool({ 
    host : 'localhost',
    port : 5432,
    database : 'appdb', 
    user : 'postgres', 
    password : '1234'
    });

db.connect()

const options = {
    db,
    sessions : {
        time : 60*60*2, //2 hour
        path : './sessionsStorage'
    },
    standartHeaders : {
        'Access-Control-Allow-Methods' : 'GET, POST, DELETE, OPTIONS, PUT',
        'Access-Control-Allow-Headers': 'Accept, Content-Type',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Credentials': 'true'
    }
}
const app = new Svidko(options)
app.compose(...gradebook, ...marks, ...schedule, ...login)
app.listen(3001, () => console.log('server start'));