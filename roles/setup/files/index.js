let http = require("http");

let server = http.createServer(function (req, res) {
    res.writeHead(200);
    res.end("Hello world!");
});

server.listen(3000);