const { Pool } = require('pg');
const db = new Pool({ 
    database: 'fool_app'
})

var sql = "INSERT INTO locations ( location_name, used) VALUES $1";

  var values = [
    ['At the veterinary clinic', false],
    ['In a pottery class', false],
    ['At a trivia night', false],
    ['On the red carpet', false],
    ['On the peak of a mountain', false],
  ];

values.forEach( val => {
    db.query(sql, val)
})

// db.query(sql, [values])

