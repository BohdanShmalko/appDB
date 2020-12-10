const requestCreator = require("../../myLib/svidko/requestCreator")
      pageNames = require("./pageNames")
      SQL = require("./SQL")

const getPage = requestCreator('post', '/gradebook', async (req, res) => {
    const {num, userId} = req.body
    const pageName = pageNames[num]
    console.log(req.body)
    let pageInf = await SQL[pageName](userId, num, req.db)
    pageInf.name = pageName
    pageInf.number = num
    //req.db.end()
    res.sendJSON(pageInf)
}, {useDB : true})


module.exports = [getPage]