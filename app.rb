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
    session[:player] = params[:player]
    redirect '/player'
  end
  
  get '/player' do
    @player = session[:player]
    erb :player
  end

  get '/result' do
  #   @player_choice = session[:choose]
  #   p @player_choice
  #   # @comp_choice = Comp_choice.new
  end

  run! if app_file == $0
end