const {requestCreator} = require("shvidko")
      pageNames = require("./pageNames")
      SQL = require("./SQL"),
      easyDB = require("../../easyDB")

const getPage = requestCreator('post', '/gradebook', async (req, res) => {
    const {num, userId} = req.body
    const pageName = pageNames[num]
    let db = easyDB(req.db)
    let pageInf = await SQL[pageName](userId, num, db)
    pageInf.name = pageName
    pageInf.number = num
    res.send(pageInf)
}, {useDB : true})


module.exports = [getPage]