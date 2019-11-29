const amqp = require('amqplib/callback_api');

const CONN_URL = 'amqp://pqialokm:l40a91Wz7_ij3enbwe4bBCJIyYXKIFGy@mustang.rmq.cloudamqp.com/pqialokm';

let ch = null;
amqp.connect(CONN_URL, function (err, conn) {
   conn.createChannel(function (err, channel) {
        if(err){
            console.log(err);
            return;
        }      
        ch = channel;
        console.log("Connected to RABBITMQ..")
   });
});

const queueName = "reviews";

const publishToQueue = async ( data) => {
        ch.sendToQueue(queueName, new Buffer.from(JSON.stringify(data)))
    }
 

 process.on('exit', (code) => {
    ch.close();
    console.log(`Closing rabbitmq channel`);
 });

 module.exports = {
    publishToQueue
 }