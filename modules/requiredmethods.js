const {GET_COUNT, GET_RATINGS, GET_RATING} = require('../constants/psqlQueries')
const {publishToQueue} = require('../AMQP/index')
const pool = require("../db")
let publish = async( data ) => {
    return new Promise(
        async(resolve, reject)=>{
            
            try{
                publishToQueue(data).then(
                    r=>resolve(true)
                )
                .catch(err=>{
                    console.timeLog('ERROR: ', err)
                    reject(false)
                })
            }
            catch(err){
                console.log("ERROR: ", err)
                reject(false)
            }
        }
    )
}
//Product Page
let getRatingsDB = (pid, offset, limit) => {
    return new Promise((resolve, reject)=>{
        pool.query(GET_RATINGS, [pid, offset, limit], function(err, result){
            if(err){
                console.log("Failed to get result")
                reject(err)
            }
            else{
                if(result.rows.length==0){
                    reject('No output')
                }
                else{
                    console.log('Results: ',result.rows)
                    resolve(result.rows)
                }
            }
        })
    })
}
//Catalogue Page
let getRatingDB = (offset, limit) => {
    return new Promise((resolve, reject)=>{
        pool.query(GET_RATING, [ offset, limit], function(err, result){
            if(err){
                console.log("Failed to get result")
                reject(err)
            }
            else{
                if(result.rows.length==0){
                    reject('No output')
                }
                else{
                    console.log('Results: ',result.rows)
                    pool.query(GET_COUNT, function(err, res){
                        if(err)
                            reject(err)
                        else{
                            resolve({data:result.rows, count:res.rows[0].count})
                        }
                    }
                    
                    )
                }            
            }
        })
    })
}

module.exports = {
    publish,
    getRatingDB,
    getRatingsDB
}