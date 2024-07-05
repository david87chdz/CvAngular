const express = require('express');
const app = express();
const routes = require('./routes/routes.js');


app.use(express.json());

// Routes
app.use('/', routes);

module.exports = app;
