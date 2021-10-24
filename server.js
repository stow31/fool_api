const express = require('express');
const port = process.env.PORT || 3001;
const Location = require('./model/location.js');
const Scenario = require('./model/scenario.js');

const app = express();

app.listen(port, () => {
    console.log(`server is listening on ${port}`);
})

app.use(express.json()) 

app.get('/api/locations', (req, res) => {
    let promise = Location.findAll();
    promise.then( dbRes => {
        res.json(dbRes.rows)
    })
})

app.get('/api/scenarios', (req, res) => {
    let promise = Scenario.findAll();
    promise.then( dbRes => {
        res.json(dbRes.rows)
    })
})
