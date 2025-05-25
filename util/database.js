require('dotenv').config();

const mysql = require('mysql2');
const config = require('../config/config').development;

const pool = mysql.createPool({
    host: config.host,
    user: config.username,
    database: config.database,
    password: config.password,
    port: config.port || 3306
});

module.exports = pool.promise();
