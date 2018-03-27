var express = require('express');
var router = express.Router();
var request = require('request');

// DB Connection
var connection = require('../connection');

// Get API root
router.get('/', function (req, res, next) {
    return res.json( {welcome: 'Welcome to the comments API'} )
});

module.exports = router