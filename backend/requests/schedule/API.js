const requestCreator = require("../../myLib/svidko/requestCreator"),
      getSchedule = require("./SQL"),
      getJSON = require("../../myLib/DB/getJSON")

const schedule = requestCreator('post', '/schedule', async (req,res) => {
    let data = req.body
    //console.log(getSchedule(data.name, req.db));
    let result = await getSchedule(data.name, req.db)
    result.name = data.name
    console.log(data);
    //res.sendJSON(getJSON("testSchedule"))
    res.sendJSON(result)
}, {useDB : true})


module.exports = [schedule]