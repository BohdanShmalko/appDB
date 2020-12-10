const Svidko = require('./myLib/svidko/svidko'),
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
const app = new Svidko(db)
app.compose(gradebook, marks, schedule, login)
app.listen(3001, () => console.log('server start'));