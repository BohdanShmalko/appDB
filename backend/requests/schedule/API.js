const {requestCreator} = require("shvidko"),
      getSchedule = require("./SQL"),
      easyDB = require("../../easyDB")

const schedule = requestCreator('post', '/schedule', async (req,res) => {
    let data = req.body
    let db = easyDB(req.db)
    let result = await getSchedule(data.name, db)
    result.name = data.name
    res.send(result)
}, {useDB : true})


module.exports = [schedule]