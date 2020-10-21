feature "show bookmarks" do
  scenario "user comes from homepage and sees his bookmarks" do
    visit('/')
    click_button('Show Bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end

end
