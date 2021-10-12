require 'bookmark'


describe Bookmark do 
  it '.all returns all bookmark instances' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com', 'Makers Academy');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com', 'Destroy Software');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com', 'Google');")

    bookmarks = Bookmark.all

    expect(bookmarks).to include({"id"=>"1", "title"=>"Makers Academy", "url"=>"http://www.makersacademy.com"})
    expect(bookmarks).to include({"id"=>"2", "title"=>"Destroy Software", "url"=>"http://www.destroyallsoftware.com"})
    expect(bookmarks).to include({"id"=>"3", "title"=>"Google", "url"=>"http://www.google.com"})
  end
end