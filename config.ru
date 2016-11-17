require 'sinatra/base'

#controllers
require './controllers/application_controller'
require './controllers/account_controller'
require './controllers/lyrics_controller'

#models
require './models/accounts'
require './models/lyrics'
require './models/userlyrics'



#map controllers to routes
map ('/') { run ApplicationController } 
map ('/account') { run AccountController }
map ('/dashboard') { run LyricsController }
