crypto = require('crypto')

helpers =

  email: require('./email')

  # Replace a route with params with actual values
  # e.g url('/:productUrl/design', {productUrl: 'cards'})
  #       => /cards/design
  path: (str, values) ->
    for key, value of values
      str = str.replace(":#{key}", value)
    str

  price: (num) ->
    n = parseFloat(num, 10)
    return n.toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, '$1,')

  gravatarUrl: (email) ->
    email = email.replace(/\s/g,'').toLowerCase()
    email = crypto.createHash('md5').update(email).digest('hex')
    return "http://www.gravatar.com/avatar/#{email}"

  authed: (req, res, next) ->
    return next('Not logged in') unless req.user
    next()
  authedAdmin: (req, res, next) ->
    return next('Not admin') unless req.user?.admin
    next()

  streamRead: (readable, cb) ->
    body = ''
    readable.on('data', (chunk) ->
      body += chunk
    )
    readable.on('end', () ->
      cb(null, body)
    )
    readable.on('error', (err) ->
      cb(err)
    )
    readable.resume()

  randomString: () ->
    Math.random().toString(36).substring(2)


module.exports = helpers
