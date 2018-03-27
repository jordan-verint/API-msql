var express = require('express');
var router = express.Router();
var request = require('request');

// DB Connection
var connection = require('../connection');

connection.connect();

// Get API root
router.get('/', function (req, res, next) {
    connection.query('SELECT * FROM comments', function (error, rows, fields) {
        if (error) throw error;
        return res.end(JSON.stringify(rows))
        connection.end();
    });

});

router.get('/:id', function (req, res, next) {
    connection.query('SELECT * FROM comments WHERE id = '+req.params.id, function (error, rows, fields) {
        if (error) throw error;
        return res.end(JSON.stringify(rows))
        connection.end();
    });
});



module.exports = router