feature "show bookmarks" do
  scenario "user comes from homepage and sees his bookmarks" do
    visit('/')
    click_button('Show Bookmarks')
    expect(page).to have_content("My first bookmark")
  end
end
