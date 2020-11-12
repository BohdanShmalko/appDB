const http = require('http'),
      {urlStandartForm, getParser} = require('./parsers/GETparser'),
      postParser = require('./parsers/POSTparser'),
      Session = require("./session/session")


class Svidko {
    constructor() {
        this.routing = {get: {}, post: {}}
        this.app = http.createServer((req, res) => {  
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
                    if(reqObj.hasSession) {
                        const  session = new Session(req, res)
                         session.get( data => {
                            req.session = {
                                token : session.token,
                                data,
                                set(obj) {
                                    session.set(obj)
                                }
                            }
                            session.end()                           
                            reqObj.callback(req, res)
                        })
                    }
                    else reqObj.callback(req, res)
                })
            })
        })
    }

}

module.exports = Svidko