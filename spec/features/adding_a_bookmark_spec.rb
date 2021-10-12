feature "Adding bookmarks" do
  scenario "Add facebook.com" do
    visit ('/')
    click_button "Add"
    fill_in :url, with: "https://www.facebook.com/"
    click_button "Save"
    expect(page).to have_content "https://www.facebook.com/"
  end
end