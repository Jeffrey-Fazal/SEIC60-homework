// npm install in root directory
const express = require('express');
const {Client} = require("@apperate/iexjs")
const ejs = require('ejs');
// start server on port 3000
const server = express();
server.set('view-engine', ejs);
const PORT = 3000;

server.get('/', (req, res) => {
    res.render('stock.ejs');
});

server.get('/close', (req, res) => {
    let stockToken = req.query.stockreq
    const client = new Client({api_token: "pk_16a849fd637243a79fff90fa4d42bc5d", version: "v1"});

    client.quote({symbol: stockToken}).then((response) => {
        let stockclose = response.close
        res.render('close.ejs', {price: stockclose})
    }).catch((error) => {
        console.log(error)
        let stockclose = 'unavailable'
        res.render('close.ejs', {price: stockclose})
    })
});

server.listen(PORT, () => console.log(`Now serving on http://localhost:${ PORT }`));
