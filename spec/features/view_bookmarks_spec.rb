feature "viewing bookmarks" do
  scenario "viewing bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com', 'Makers Academy');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com', 'Destroy Software');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com', 'Google');")

    visit('/')

    expect(page).to have_content "Makers Academy"
    expect(page).to have_content "Destroy Software"
    expect(page).to have_content "Google"
  end
end