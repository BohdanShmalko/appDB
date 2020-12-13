const {requestCreator} = require("shvidko"),
      SQL = require("./SQL"),
      easyDB = require("../../easyDB")

const getMarks = requestCreator('post', '/marks', async (req, res) => {
    let db = easyDB(req.db)
    const userId = req.body.userId
    let result = await SQL.getMarks(userId, db)
    res.send(result)
}, {useDB : true})

const saveMarks = requestCreator('post', '/saveMarks', async (req, res) => {
    let db = easyDB(req.db)
    let result = await SQL.saveMarks(req.body, db)
    res.send({status : result})
}, {useDB : true})

module.exports = [getMarks, saveMarks]