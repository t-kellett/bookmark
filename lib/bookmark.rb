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
      bookmark["title"]
    end
  end

  def self.add(title, bookmark)
    @@connection.exec("INSERT INTO bookmarks(title, url) VALUES('#{title}', '#{bookmark}');")
  end
end