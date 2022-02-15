require 'sinatra/base'
require 'sinatra/reloader' 
require './lib/space'

class Kewtbnb < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello! branching sucks'
  end

  get '/spaces' do
    @spaces = Space.all
    erb :spaces
  end

  run! if app_file == $0
end
