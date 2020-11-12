 const qs = require('querystring');
 
 const postParser = (routing, req, res) => {
    if (req.method == 'POST') {
        if(routing[req.url]){
            let body = '';

            req.on('data', function (data) {
                body += data;

            // Too much POST data, kill the connection!
            // 1e6 === 1 * Math.pow(10, 6) === 1 * 1000000 ~~~ 1MB
                if (body.length > 1e6)
                req.connection.destroy();
            });

            req.on('end', function () {
                let parseBody = qs.parse(body);
                req.body = parseBody
                routing[req.url].callback(req, res)
            });
        }else res.end('page not found')
    }
}

module.exports = postParser