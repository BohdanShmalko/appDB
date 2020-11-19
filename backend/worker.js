const Svidko = require('./myLib/svidko/svidko'),
      gradebook = require('./requests/gradebook'),
      marks = require('./requests/marks'),
      schedule = require('./requests/schedule'),
      {Pool} = require("pg")

const db = new Pool({ 
    host : 'localhost',
    port : 5432,
    database : 'gradebook', 
    user : 'postgres', 
    password : '1234'
    });

const app = new Svidko(db)
app.compose(gradebook, marks, schedule)
app.listen(3001, () => console.log('server start'));