require 'bookmark'

describe Bookmark do
  describe '.all' do
    let(:bookmark_arr) { [["Makers", "http://www.makersacademy.com"], 
      ["Destroy All Software", "http://www.destroyallsoftware.com"],
      ["Twitter", "http://www.twitter.com"]]}

    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      3.times { |each|
        expect(bookmarks[each]).to have_attributes(title: bookmark_arr[each][0], url: bookmark_arr[each][1])
      }
    end
  end

  describe '.create' do

    it 'adds new bookmark' do
      Bookmark.create('Facebook', 'http://facebook.com')
      bookmarks = Bookmark.all
      expect(bookmarks.last).to have_attributes({title: 'Facebook', url: 'http://facebook.com'})

    end
  end
end
