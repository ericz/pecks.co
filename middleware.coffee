express = require('express')


module.exports = (app) ->
  app.use(express.static(__dirname + '/public'))
  app.use(express.cookieParser('chickenpex'))
  app.use(express.session({ secret: 'chickenpex' }))
  app.use(express.json())
  app.use(express.urlencoded())


