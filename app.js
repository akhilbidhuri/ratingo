const express = require('express');
const cors = require('cors');
const dotenv = require('dotenv');
const logger = require('morgan');
var bodyParser = require('body-parser');
const consumer = require('./AMQP/consumer')
var servestatic = require('serve-static')
const result = dotenv.config();
if (result.error) {
  throw result.error;
}

const allRoutes = require('./routes');

const { PORT } = process.env;

const app = express();

app.use(cors());
app.use(logger('dev'));
app.use(bodyParser.json()); 
app.use(bodyParser.urlencoded({ extended: true }));
app.use(servestatic(__dirname + "/build"))

app.use(allRoutes);
app.listen(PORT, () => console.log(`App running at http://localhost:${PORT}`));
consumer()

module.exports = app;