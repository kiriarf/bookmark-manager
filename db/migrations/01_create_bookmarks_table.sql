-- to run:
-- psql bookmark_manager -f 01_create_bookmarks_table.sql
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');
INSERT INTO bookmarks (url) VALUES ('http://askjeeves.com');
INSERT INTO bookmarks (url) VALUES ('http://twitter.com');
INSERT INTO bookmarks (url) VALUES ('http://www.google.com');
DELETE FROM bookmarks WHERE url = 'http://twitter.com';
UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE url = 'http://askjeeves.com';
