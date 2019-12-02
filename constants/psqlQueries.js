module.exports = { 
  INSERT_RATING : "INSERT INTO ratings (rid, uid, rating, comment, pid) VALUES ($1, $2, $3, $4, $5)",
  GET_RATINGS : "select * from ratings where pid=$1 offset $2 limit $3",
  GET_RATING : "select * from avgratings offset $1 limit $2",
  GET_COUNT : "select count(*) from avgratings",
  CHECK_UID : "select * from userproducts where uid=$1 and pid=$2"
}