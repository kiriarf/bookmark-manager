### Bookmark Manager
This is an application that helps users to manage their bookmarks.
The app can add or delete bookmarks and display a full or filtered list.
Bookmarks can be tagged for filtering purposes, as well as commented and updated.

## Setup
-- Connect to psql
-- Create the database using the psql command ```CREATE DATABASE bookmark_manager;```
-- For testing, create a test db: ```CREATE DATABASE bookmark_manager_test;```
-- Exit psql and connect to the new database, and provide the query file: ```psql bookmark_manager -f 01_create_bookmarks_table.sql```