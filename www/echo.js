
window.echo = function(str, successCallback) {
  exec(successCallback, 
       function(err) {
         successCallback('Nothing to echo.');
        }, 
        "Echo", 
        "echo", 
        [str]);
};
