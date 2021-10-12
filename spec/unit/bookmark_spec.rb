require 'bookmark'

describe Bookmark do 
  it '.all returns all bookmark instances' do
    expect(Bookmark.all).to eq (['http://www.askjeeves.com', 'http://www.twitter.com', 'http://www.google.com'])
  end
end