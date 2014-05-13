path = require 'path'

Linguist = require '../src/index'

linguist = new Linguist()

linguist.detect path.join(__dirname, '../src/index.coffeeA'), (err, response) ->
  console.log err
  console.log response
