require 'sinatra/base'
require 'sinatra/reloader' 
require './lib/space'

class Kewtbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :homepage
  end

  get '/spaces' do
    @spaces = Space.all
    erb :spaces
  end

  post '/spaces/booking-request' do
    "Booking request received."
  end

  run! if app_file == $0
end
