var express = require('express'),
    swig = require('swig'), 
    config = require('./config/config'),
    app = module.exports = express(); 

// Config 
require('./config/express')(app, config);
require('./config/routes')(app, config);

// Authenticator
app.use(express.basicAuth(function(user, pass) {
 return user === 'tch' && pass === 'tch';
}));
 
// Start server 
app.listen(config.server.port); 
console.log('Server listening on port ' + config.server.port);  