// content of index.js
const http = require('http');
const requestService = require('request');
const port = 3030;
const proxyUrl = process.env.PROXYURL || "https://google.com";

const requestHandler = (request, response) => {
    requestService(proxyUrl, { json: true }, (err, res, body) => {
        if (err) {
            response.end(err.toString());
        } else {
            response.end("Proxying value: " + body);
        }
    });
}

const server = http.createServer(requestHandler);

server.listen(port, (err) => {
    if (err) {
        return console.log('something bad happened', err);
    }

    console.log(`server is listening on ${port}`);
});