eco = require 'eco'
mongoskin = require 'mongoskin'

express = require 'express'
app = express.createServer()

app.register '.eco', eco
app.set 'view engine', 'eco'

# Setup Static Files
app.use express.static(__dirname + '/public')

# Setup Assets
app.use require('connect-assets')()

# App Routes
app.get '/', (req, resp) ->
  resp.render 'index.eco', title: 'Your Title Here'

# Listen
app.listen 3000, -> console.log 'Listening on port 3000'
