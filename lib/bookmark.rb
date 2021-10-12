class Bookmark
  @@bookmarks = [] 

  def initialize 
    @@bookmarks << self
  end

  def self.all 
    @@bookmarks.each do |bookmark|
      bookmark
    end
  end
end