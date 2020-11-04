const createAppWithSettings = require('./functions/createAppWithSettings')
const getJSON = require('./functions/getJSON')

const app = createAppWithSettings()
const PORT = 3001

const testGradebook = getJSON('testGradebook')
const testSchedule = getJSON('testSchedule')
const testMarks = getJSON('testMarks')

app.get('/gradebook/:number', (req, res) => {
  res.send(JSON.stringify(testGradebook[req.params.number]))
})

app.get('/schedule/:name', (req, res) => {
  res.send(JSON.stringify(testSchedule))
})

app.get('/marks', (req, res) => {
  res.send(JSON.stringify(testMarks))
})

app.post('/saveMarks', (req, res) => {
  const data = req.body
  console.log(data)
  res.send(JSON.stringify({status : 200}))
})

app.listen(PORT);
