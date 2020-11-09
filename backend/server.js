const createAppWithSettings = require('./functions/createAppWithSettings')
const getJSON = require('./functions/getJSON')
const {query} = require('./functions/DB')

const {app, client} = createAppWithSettings()
const PORT = 3001

const testGradebook = getJSON('testGradebook')
const testSchedule = getJSON('testSchedule')
const testMarks = getJSON('testMarks')


app.get('/test', (req, res) => {
  //res.set({ 'content-type': 'application/json; charset=utf-8' });

  //client.set('sessionId', req.sessionID)
  //client.get('sessionId', (err, reply) => console.log(reply))

  // if(!req.session[req.sessionID]) {
  //   req.session[req.sessionID]  = {}
  //   req.session[req.sessionID].id = 1
  //   console.log('new')
  // }
  // req.session[req.sessionID].id++

  //req.sessionID - id сесії наприклад : BGPYtVfUDHe6rCpbfR2vzIBaOYlLMRfO

  //const sql = `SELECT * FROM teachers`
  //query(sql, data => res.send(JSON.stringify(data.rows)))

  res.send(JSON.stringify(req.session[req.sessionID].id))
})

app.get('/test2', (req, res) => {
  //res.set({ 'content-type': 'application/json; charset=utf-8' });

  //client.set('sessionId', req.sessionID)
  //client.get('sessionId', (err, reply) => console.log(reply))

  //req.sessionID - id сесії наприклад : BGPYtVfUDHe6rCpbfR2vzIBaOYlLMRfO

  //const sql = `SELECT * FROM teachers`
  //query(sql, data => res.send(JSON.stringify(data.rows)))

  //res.send(JSON.stringify(req.session[req.sessionID].id))
})

app.get('/gradebook/:number', (req, res) => {
  //console.log(req.session)

  //client.get('sessionId', (err, reply) => console.log("reply: ", reply))

  res.send(JSON.stringify(testGradebook[req.params.number]))
})

app.get('/schedule/:name', (req, res) => {
  //(id, teacher_id, subject_id, group_id, hour_id, place_id, day_id
  // const sql = `SELECT 
  //   teachers.first_name AS "teacher",
  //   subjects.name AS "subject",
  //   hours.pair_number AS "pair",


  //   FROM teachers, schedules, subjects, groups, hours
  //   WHERE teachers.id = schedules.teacher_id AND
  //   subjects.id = schedules.subject_id AND
  //   groups.id = schedules.group_id AND
  //   hours.id = schedules.hour_id
  // `
  // query(sql, data => res.send(JSON.stringify(data.rows)))
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
