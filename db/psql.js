const Pool = require('pg').Pool
const pool = new Pool({
  user: 'rxdiwynnkpzevx',
  password: 'ee8ba5603439d106cb016f894454d2505cde23d74d5728d4bc62bdc465f72006',
  host: 'ec2-174-129-205-197.compute-1.amazonaws.com',
  database: 'd1u0rmn2sptkpi',
  //   user: 'abidhuri',
  //   host: '127.0.0.1',
  //   database: 'ratingservice',
    port: 5432,
})

module.exports = pool;