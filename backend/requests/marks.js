const requestCreator = require("../myLib/svidko/requestCreator")

const getMarks = requestCreator('post', 'getMarks', (req, res) => {

    res.sendJSON({})
}, {useDB : true})

module.exports = [getMarks]