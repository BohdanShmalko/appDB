// const Client = require("../myLib/svidko/session/client") //for cookie
const requestCreator = require("../myLib/svidko/requestCreator")

const login = requestCreator('post', '/login', (req, res) => {

    res.sendJSON({})
}, {useDB : true})


module.exports = [login]