const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const fs = require('fs');
const cors = require("cors");

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const routes = require('./routers/routes.js')(app, fs);

const server = app.listen(9090, () => {
    console.log('listening on port %s...', server.address().port);
});