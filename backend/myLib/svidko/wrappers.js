const Session = require("./session/session")

const DbWrapper = (req, db) => {
    req.db = {
        query : sql => {
            db.connect()
            return db.query(sql).then(data => {
                db.end()
                return data.rows
            }).catch(e => {throw e})
        }
    }
}

const SessionWrapper = (req, res, callback) => {
    const  session = new Session(req, res)
    session.get( data => {
    data = JSON.parse(data)
    req.session = {
        token : session.token,
        data,
        set(obj) {
            session.set(obj)
        }
    }
    session.end()                           
    callback(req, res)
    })
}

module.exports = {DbWrapper, SessionWrapper}

