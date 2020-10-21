require 'bookmark'

describe Bookmark do
  let(:database) { 'bookmark_manager_test'}

  before(:each) do
    truncate_test_table
    populate_table
  end
  describe '.all' do

    it 'returns all bookmarks' do
      bookmarks = Bookmark.all(database)

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end

  describe '.create' do

    it 'adds new bookmark' do
      Bookmark.create(database, 'http://facebook.com')
      bookmarks = Bookmark.all(database)
      expect(bookmarks).to include('http://facebook.com')

    end
  end
end
