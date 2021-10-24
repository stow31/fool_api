const { Pool } = require('pg');
const db = new Pool({ 
    database: 'fool_app'
})

const Scenario = {
    findAll: () => {
        const sql = "SELECT * FROM scenarios;"
        return db.query(sql);
    },
}

module.exports = Scenario;