const marks = [
    {
        method : 'get',
        url : '/marks1',
        callback(req,res) {
            res.end('marks1')
        }
    },
    {
        method : 'get',
        url : '/marks2',
        callback(req,res) {
            res.end('marks2')
        }
    }
]

module.exports = marks