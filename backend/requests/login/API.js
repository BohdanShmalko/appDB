const {requestCreator} = require("shvidko")
      getUserId = require("./SQL"),
      easyDB = require("../../easyDB")

const login = requestCreator('post', '/login', async (req, res) => {
    const {login, password} = req.body
    let db = easyDB(req.db)
    let result = await getUserId(login, password, db)
    res.send(result)
}, {useDB : true})

module.exports = [login]