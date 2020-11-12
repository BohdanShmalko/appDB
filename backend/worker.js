const Svidko = require('./myLib/svidko/svidko'),
      gradebook = require('./requests/gradebook'),
      marks = require('./requests/marks'),
      schedule = require('./requests/schedule')

const app = new Svidko()

app.compose(gradebook, marks, schedule)
app.listen(3001, () => console.log('server start'));