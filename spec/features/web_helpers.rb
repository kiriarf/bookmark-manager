def truncate_test_table
  con = PG.connect(dbname: 'bookmark_manager_test')
  con.exec("TRUNCATE TABLE bookmarks;")
end

def populate_table
  con = PG.connect(dbname: 'bookmark_manager_test')
  con.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');
  INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');
  INSERT INTO bookmarks (url) VALUES ('http://twitter.com');
  INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
end