const createAppWithSettings = require('./functions/createAppWithSettings')
const getJSON = require('./functions/getJSON')

const app = createAppWithSettings()
const PORT = 3001

const testPages = getJSON('testGradebook')

app.get('/gradebook/:number', (req, res) => {
  res.send(JSON.stringify(testPages[req.params.number]))
})

app.listen(PORT);
