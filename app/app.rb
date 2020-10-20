require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  # post '/name' do
  #   session[:name] = params[:name]
  #   redirect '/play'
  # end

  # get '/play' do
  #   @name = session[:name]
  #   erb(:play)
  # end

  # post '/result' do
  #   @choice = params[:choice]
  #   game = Game.new(@choice)
  #   @result = game.play
  #   erb(:result)
  # end

  run! if app_file == $0
end
