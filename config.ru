require 'sinatra/base'

#controllers
require './controllers/application_controller'


#models
# require './models/cats'



#map controllers to routes
map ('/') { run ApplicationController } 
# map ('/cats') { run CatsController } # or ('/api/cats')
