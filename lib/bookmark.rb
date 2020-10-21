require 'pg'

class Bookmark
  def self.all(db = 'bookmark_manager')
    con = PG.connect(dbname: db)
    result = con.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(db = 'bookmark_manager', url)
    con = PG.connect(dbname: db)
    con.exec("INSERT INTO bookmarks(url) VALUES('#{url}');")
  end
end
