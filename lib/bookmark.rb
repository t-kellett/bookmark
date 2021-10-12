require 'pg'

class Bookmark
  def self.create
    if ENV['ENVIRONMENT'] == 'test'
      @@connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      @@connection = PG.connect(dbname: 'bookmark_manager')
    end
  end


  def self.all 
    result = @@connection.exec('SELECT * FROM bookmarks')
    result.map do |bookmark|
      bookmark["url"]
    end
  end

  def self.add(bookmark)
    @@connection.exec("INSERT INTO bookmarks(url) VALUES('#{bookmark}');")
  end
end