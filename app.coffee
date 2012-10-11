require 'coffee-script'

##
# Module dependencies.
##

express = require 'express'
routes = require './routes'
path = require 'path'

# Nib adds Stylus sugar
nib = require 'nib'

##
# Express setup
##

app = express()

app.configure ->
  # Use environment defined port or default of 3000
  app.set 'port', process.env.PORT || 3000
  # Views are in the /views directory
  app.set 'views', __dirname + '/views'
  # Use jade as view rendering engine
  app.set 'view engine', 'jade'
  # Routes should be case sensitive (/Users isn't /users)
  app.enable 'case sensitive routing'
  # Serve favicon.ico from /public
  app.use express.favicon()
  app.use express.bodyParser()
  app.use express.methodOverride()
  # Cookies. Set your custom secret.
  app.use express.cookieParser('SECRET_GOES_HERE')
  # User sessions
  app.use express.session()
  # CSRF protection
  app.use express.csrf()
  app.use app.router
  # Automatic processing of static assets (in assets dir)
  app.use require('connect-assets')()
  # Path to public, static files
  app.use express.static(path.join(__dirname, 'public'))

app.configure 'production', ->
  # Production logging should probably be to a file
  app.use express.logger()

app.configure 'development', ->
  app.use express.errorHandler()
  # Dev logging is good for dev
  app.use express.logger('dev')


##
# Express endpoints
##

# Example using external routes
app.get '/', routes.index

# Example with endpoint defined here
app.get '/about', (req, res) ->
  console.log '/about'


# Launch server

app.listen app.get('port'), ->
  console.log "Express server listening on port " + app.get('port')
