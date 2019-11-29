const routes = require('express').Router();
const {
  newRating,
  getRatings,
  getMinRatings
} = require('./endpoints.controller');

routes.post('/newRating', newRating);
routes.get('/getRatings', getRatings);
routes.get('/getMinRatings', getMinRatings);
module.exports = routes;