class BookmarkList 
  attr_reader :list

  def initialize
    @list = []
  end

  def add(bookmark)
    list << bookmark
  end
  
  def show
    list.each do |bookmark|
      puts bookmark
    end
  end

end
