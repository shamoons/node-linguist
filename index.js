var exec = require('child_process').exec;


module.exports = function() {
  exec('./vendor/linguist.rb .', function(err, stdout, stderr) {
    console.log(err);
    console.log(stdout);
    console.log(stderr);
  });
}