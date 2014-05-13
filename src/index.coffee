{exec} = require 'child_process'
path = require 'path'

class Linguist
  detect: (filePath, cb) ->
    exec path.join(__dirname, '../bin', 'linguist.rb') + " #{filePath}", (err, stdout, stderr) ->
      return cb err if err

      try
        json = JSON.parse stdout
      catch e
        return cb new Error 'Not a valid JSON response'

      cb null, json
  
module.exports = Linguist