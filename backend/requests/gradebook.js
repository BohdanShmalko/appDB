// const Client = require("../myLib/svidko/session/client") //for cookie
const requestCreator = require("../myLib/svidko/requestCreator")

const page1 = requestCreator('get', '/gradebook1', (req, res) => {
    data = JSON.parse( req.session.data)
    data.id = 20
    data.name = "Vasa"
    req.session.set(data)
    res.end(JSON.stringify(data))
},true)

const page2 = requestCreator('get', '/gradebook2', (req,res) => {
    res.end('gradebook2')
})

module.exports = [page1, page2]