const {Pool} = require('pg')

class DB {
    constructor(host = '127.0.0.1', port = 5432, database, user, password){
        this.pool = new Pool({ host, port, database, user, password });
    }

    query(sql, callback) {
        this.pool.query(sql, (err, res) => {
            if(err) throw err
            callback(res)
        })
    }
}

module.exports = DB