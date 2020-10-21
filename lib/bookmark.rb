require 'pg'

class Bookmark
  def self.all(db = 'bookmark_manager')
    con = PG.connect(dbname: db)
    result = con.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end
end
