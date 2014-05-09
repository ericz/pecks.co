express = require('express')
conf = require('./pecks.conf')

# Constants
PORT = process.env.PORT ? conf.port ? 3000

# Express
app = express()
app.env = conf.env

# Various website middleware
require('./middleware')(app)

app.listen(PORT, ->
  console.log('Started server on port', PORT)
)
