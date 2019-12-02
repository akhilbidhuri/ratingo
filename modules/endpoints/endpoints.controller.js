
const uuidv1 = require('uuid/v1');
const respones = require('../../constants/responseMessages');
const {publish, getRatingDB, getRatingsDB, checkUser} = require('../requiredmethods')
/****************** 
    This controller is for getting the request from client to insert new rating for a product. 
    The controller acts like a producer and pushes the data into the rabbitmq queue. and responds to client.
*******************/

var newRating = async function(req, res) {
  let seed = Math.random()*1000
  seed = seed.toPrecision(3)
  let s = Math.round(Math.random()*10)
  let rid = seed + uuidv1().slice(s, s+6)
  req.body.rid = rid
  if(req.body.rid && req.body.uid &&req.body.rating && req.body.comment && req.body.pid)
  checkUser(req.body.uid, req.body.pid)
  .then(res=>{
    publish(req.body)
    .then(resp=>{
        if(resp)
            res.status(200).send({ msg: respones.genericSuccess});
          
        else
          res.status(500).send({ msg: respones.genericError});
      })
      .catch(err=>{
        console.log('ERROR: ', err);
        res.status(500).send({ msg: respones.genericError});
      })
    }
   )
   .catch(err=>{
    
    res.status(400).send({ msg: respones.genericError});
   })
   else
   res.status(400).send({ msg: respones.genericInputError});
}
/******************* 
    This controller retrieves ratings of a specific product will be used on the Product page, it requires
    offset, limit and pid. 
*******************/
var getRatings = (req, res) =>{
  if(req.query.pid && req.query.offset && req.query.limit)
  getRatingsDB(req.query.pid, req.query.offset, req.query.limit)
  .then(resp=>
    res.status(200).json({ msg: respones.genericSuccess, data: resp})
  )
  .catch(err=>{
      console.log('ERROR: ', err)
      res.status(500).send({ msg: respones.genericError});
    }
  )
  else
    res.status(400).send({ msg: respones.genericInputError});
}
/******************* 
    This controller retrieves average ratings and number of ratings for the products this will mainly get 
    called in the catalogue page.
*******************/
var getRating = (req, res) =>{
  if(req.query.offset && req.query.limit)
  getRatingDB(req.query.offset, req.query.limit)
  .then(resp=>
    res.status(200).json({ msg: respones.genericSuccess, data: resp.data, count:resp.count})
  )
  .catch(err=>{
      console.log('ERROR: ', err)
      res.status(500).send({ msg: respones.genericError});
    }
  )
  else
  res.status(400).send({ msg: respones.genericInputError});
}
module.exports = {
  newRating,
  getRatings,
  getRating
};