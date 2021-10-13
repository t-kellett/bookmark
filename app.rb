require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions, :method_override

  get '/' do
    redirect '/bookmarks'
  end

  get '/bookmark/' do
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/bookmark-form' do
    erb :bookmark_form
  end

  post '/add-bookmark' do
    Bookmark.create(title: params[:title], url: params[:url])
    redirect('/bookmarks')
  end

  delete '/bookmark/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  get '/bookmark/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  get '/bookmark/:id/edit' do
    @bookmark = Bookmark.find(id: params[:id])
    erb :'bookmark/edit'
  end

  patch '/bookmark/:id' do
    Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
    redirect '/bookmarks'
  end 

  run! if app_file == $0
end
