const schedule = [
    {
        method : 'get',
        url : '/schedule1',
        callback(req,res) {
            res.end('schedule1')
        }
    },
    {
        method : 'get',
        url : '/schedule2',
        callback(req,res) {
            res.end('schedule2')
        }
    }
]

module.exports = schedule