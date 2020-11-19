const requestCreator = require("../myLib/svidko/requestCreator")

const getSchedule = requestCreator('post', '/getSchedule', (req, res) => {
    res.sendJSON({})
}, {useDB : true})

const test = requestCreator('get', '/test', async (req, res) => {
    const teachers = await req.db.query(`SELECT * FROM teachers`)
    res.sendJSON(teachers)
}, {useDB : true})


module.exports = [getSchedule, test]