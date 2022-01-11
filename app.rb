require 'sinatra/base'
require 'sinatra/reloader'

class Rpschallenge < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
    
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:player] = params[:player]
    redirect '/play'
  end
  
  get '/player' do
    @player = session[:player]
    erb :play
  end

  get '/result' do
  #   @player_choice = session[:choose]
  #   p @player_choice
  #   # @comp_choice = Comp_choice.new
  end

  run! if app_file == $0
end