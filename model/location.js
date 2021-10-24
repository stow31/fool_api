// const { Pool } = require('pg');
// const db = new Pool({ 
//     database: 'fool_app'
// })

let pool;
if (process.env.NODE_ENV === 'production') {
  pool = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
      rejectUnauthorized: false
    }
  })
} else {
  pool = new Pool({
    database: 'my_local_database_name',
    password: 'optional_password'
  })
}

const Location = {
    findAll: () => {
        const sql = "SELECT * FROM locations;"
        return db.query(sql);
    },
}

module.exports = Location;