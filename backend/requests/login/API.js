const requestCreator = require("../../myLib/svidko/requestCreator")
      getUserId = require("./SQL")

const login = requestCreator('post', '/login', async (req, res) => {
    const {login, password} = req.body
    console.log(req.body);
    let result = await getUserId(login, password, req.db)
    res.sendJSON(result)
}, {useDB : true})

module.exports = [login]