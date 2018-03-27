'use strict';

var express = require('express');
var bodyParser = require('body-parser');
var path = require('path');
var request = require('request');

// Routes === 
var routes = require('./routes');
var comments = require('./routes/comments');

var app = express(); // Express APP

// JSON and terminal logger
var jsonParser = require('body-parser').json;
var logger = require('morgan');

// Configure middleware with status in terminal
app.use(logger('dev'));

// middleware that Returns response data as JSON
app.use(bodyParser.json());

app.use('/', routes); // Apply routes to app
app.use('/comments', comments); // Apply Auth to app

// Catch Error 404 forward to error handler
app.use(function(req, res, next){
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

// Error handler custom
app.use(function(err, req, res, next){
    res.status(err.status || 500);
    res.json({
        title: err.message,
        message: err.message,
        error: {}
    });
});

var port = process.env.PORT || 3000; // Port is 3000 unless on prod Enviroment

app.listen(port, function(){
    console.log('Express Server is listening on port', port);
});

module.exports = app;