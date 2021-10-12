require 'bookmark'

describe Bookmark do 
  it '.all returns all bookmark instances' do
    bookmark1 = Bookmark.new
    bookmark2 = Bookmark.new
    bookmarks = [bookmark1, bookmark2]
    expect(Bookmark.all).to eq(bookmarks.each {|item| item} )
  end
end