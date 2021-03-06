require 'sinatra/base'
require_relative '../lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  enable :sessions
  enable :method_override

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    # print @bookmarks
    erb(:'bookmarks/index')
  end

  get '/add_bookmark' do
    erb(:'bookmarks/add')
  end

  post '/add_to_database' do
    Bookmark.create(params[:title], params[:url])
    redirect('/bookmarks')
  end

  get '/edit_bookmarks' do
    @bookmarks = Bookmark.all
    erb(:'bookmarks/edit')
  end

  delete '/delete_bookmark' do
    # p params[:check]
    Bookmark.delete(params[:check])
    redirect('/bookmarks')
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
