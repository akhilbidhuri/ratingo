const routes = require('express').Router();
const {
  newRating,
  getRatings,
  getRating
} = require('./endpoints.controller');

routes.post('/newRating', newRating);
 routes.get('/getRatings', getRatings);//for product page, returns complete reviews of a product in a paginated manner
 routes.get('/getRating', getRating);//for catalogue page, returns avg rating, no of ratings for all the products in a paginated manner
module.exports = routes;