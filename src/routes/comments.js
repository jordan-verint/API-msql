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
        let data = rows.length ? rows : {error: 'Sorry comment with the id:'+req.params.id+' does not existd yet.'};
 
        return res.end(JSON.stringify(data))
        connection.end();
    });
});



module.exports = router