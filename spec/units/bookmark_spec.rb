require 'bookmark'

describe Bookmark do
  describe '.all' do
    before(:each) do
      truncate_test_table
      populate_table
    end
    
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all('bookmark_manager_test')

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.google.com")
    end
  end
end
