var exec = cordova.require('cordova.exec');

var Echo = function(){

};

Echo.echo = function(str, successCallback) {
  exec(successCallback, 
       function(err) {
         successCallback('Nothing to echo.');
        }, 
        "Echo", 
        "echo", 
        [str]);
};

module.exports = Echo;
