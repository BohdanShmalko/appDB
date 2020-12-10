const requestCreator = require("../../myLib/svidko/requestCreator"),
      SQL = require("./SQL")

const getMarks = requestCreator('post', '/marks', async (req, res) => {
    const userId = req.body.userId
    let result = await SQL.getMarks(userId, req.db)
    res.sendJSON(result)
}, {useDB : true})

const saveMarks = requestCreator('post', '/saveMarks', async (req, res) => {
    let result = await SQL.saveMarks(req.body, req.db)
    res.sendJSON({status : result})
}, {useDB : true})

module.exports = [getMarks, saveMarks]