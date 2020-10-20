require 'sinatra/base'
require_relative '../lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:'bookmarks/index')
  end
 
  run! if app_file == $0
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
