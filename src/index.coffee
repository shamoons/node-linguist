{exec} = require 'child_process'

class Linguist
  detect: (path, cb) ->
    exec "./bin/linguist.rb #{path}", (err, stdout, stderr) ->
      return cb err if err

      try
        json = JSON.parse stdout
      catch e
        return cb new Error 'Not a valid JSON response'

      cb null, json
  
module.exports = Linguist