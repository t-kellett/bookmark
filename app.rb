require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    # list of existing bookmarks
    # add a bookmark
    erb :bookmarks 
  end

  get '/bookmark-form' do
    erb :bookmark_form
  end

  post '/add-bookmark' do
    Bookmark.create(title: params[:title], url: params[:url])
    redirect('/bookmarks')
  end

  run! if app_file == $0
end
