var amqp = require('amqplib/callback_api');
const CONN_URL = 'amqp://pqialokm:l40a91Wz7_ij3enbwe4bBCJIyYXKIFGy@mustang.rmq.cloudamqp.com/pqialokm';
const pool = require('../db')
const {INSERT_RATING} = require('../constants/psqlQueries')
function consumer(){
    amqp.connect(CONN_URL, function (err, conn) {
    conn.createChannel(function (err, ch) {
        ch.consume('reviews', function (msg) {
        console.log('.....');
        setTimeout(function(){
            //console.log("Message:"); 
            msg = JSON.parse(msg.content.toString());
            //console.log(JSON.stringify(msg, null, 2));
            pool.query(INSERT_RATING, [msg.rid, msg.uid, msg.rating, msg.comment, msg.pid], (error, results) => {
                if (error) {
                    console.log('ERROR: ', error)
                }
                else{
                    console.log('Rating Inserted Successfully')
                }
            })
        },4000);
        },{ noAck: true }
        );
    });
    });
}
module.exports = consumer;