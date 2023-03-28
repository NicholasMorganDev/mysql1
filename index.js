const mysql = require('mysql2');
const connection = require('./connection.js');

const db = mysql.createConnection(connection);

db.query("select * from customers;", (err, data) => {
  if(err) {
    console.error(err)
  }
  console.table(data)
  db.end();
});




