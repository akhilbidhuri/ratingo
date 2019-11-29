const conn = require('../../db/mysql')
const uuidv1 = require('uuid/v1');
const moment = require('moment');
const {payment, getPlanCost, getCurrentCost} = require('../requiredmethods')
/****************** 
    This controller is for getting the request from client to insert new rating for a product. 
    The controller acts like a producer and pushes the data into the rabbitmq queue. and responds to client.
*******************/
var newRating = (req, res) =>{
  
}
/*
This controller retrieves plan data closest to the given date.
If date is not specified it returns all the plans user had.
It returns remaining days in both the conditions of the active plan.
*/
var getRatings = (req, res) =>{
  
}

var getRating = (req, res) =>{

}
module.exports = {
  newRating,
  getRatings,
  getRating
};