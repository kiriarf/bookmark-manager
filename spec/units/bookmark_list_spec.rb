require "bookmark_list"

describe BookmarkList do
  describe "#initialize" do
    it "has an empty array by default" do
      expect(subject.list).to be_empty
    end
  end
end