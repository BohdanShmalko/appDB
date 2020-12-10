const http = require('http'),
      {urlStandartForm, getParser} = require('./parsers/GETparser'),
      postParser = require('./parsers/POSTparser'),
      {SessionWrapper, DbWrapper} = require("./wrappers"),
      standartOptions = require("./options")


class Svidko {
    constructor(db) {
        this.db = db
        this.routing = {get: {}, post: {}}
        this.app = http.createServer((req, res) => {
            standartOptions(req, res)            
            getParser(this.routing.get, req, res)
            postParser(this.routing.post, req, res) 
            
        })
    }

    listen(port, callback = null, host = 'localhost') {
        this.app.listen(port, host, callback);
    }

    get(url, callback) {
        const {urlWithoutParams, params} = urlStandartForm(url)
        this.routing.get[urlWithoutParams] = {callback, params}
    }

    post(url, callback) {
        this.routing.post[url] = {callback}
    }

    compose(...requests) {
        requests.forEach(page => {
            page.forEach(reqObj => {
                this[reqObj.method](reqObj.url, (req,res) => {
                    res.sendJSON = (object) => res.end(JSON.stringify(object))
                    if(reqObj.config.useDB){
                        DbWrapper(req, this.db)
                    }
                    if(reqObj.config.hasSession){
                        SessionWrapper(req, res, reqObj.callback)
                    }
                    else reqObj.callback(req, res)
                })
            })
        })
    }

    
}

module.exports = Svidko