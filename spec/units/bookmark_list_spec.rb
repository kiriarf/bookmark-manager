require "bookmark_list"

describe BookmarkList do
  describe "#initialize" do
    it "has an empty array by default" do
      expect(subject.list).to be_empty
    end
  end

  describe "#add" do
    it "can add a bookmark to the list array" do
      subject.add("wikipedia")
      expect(subject.list).to include("wikipedia")
    end
  end

  describe "#show" do
    it "can show a list of bookmarks" do
      subject.add("wikipedia")
      subject.add("google")
      expect { subject.show }.to output("wikipedia\ngoogle\n").to_stdout
    end
  end
end
