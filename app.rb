require 'sinatra/base'
require 'sinatra/reloader' 

class Kewtbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello! branching sucks'
  end

  get '/spaces' do
    @spaces = [
    "Desert Island",
    "standard flat", 
    "Palace", 
    "Beautiful Country Estate"
    ]

    erb :spaces
  end

  run! if app_file == $0
end
