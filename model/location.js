const { Pool } = require('pg');
// const db = new Pool({ 
//     database: 'fool_app'
// })

let db;
if (process.env.NODE_ENV === 'production') {
  db = new Pool({
    connectionString: process.env.DATABASE_URL,
    ssl: {
      rejectUnauthorized: false
    }
  })
} else {
    db = new Pool({
    database: 'fool_app',
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