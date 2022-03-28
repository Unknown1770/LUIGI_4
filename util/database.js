const mysql = require("mysql2");

const pool = mysql.createPool({
    host: "localhost",
    user: "root",
    database: "ecommerce",
    password: "enormousviju1770",
});

module.exports = pool.promise();