const standartOptions = (req, res) => {
    res.setHeader("Access-Control-Allow-Methods",
                "GET, POST, PATCH, DELETE, OPTIONS");
    res.setHeader('Access-Control-Allow-Headers', 'Accept, Content-Type');
    res.setHeader('Access-Control-Allow-Origin', '*');
    if (req.method == "OPTIONS") res.end("ok")
}

module.exports = standartOptions