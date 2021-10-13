feature 'Updating a bookmark' do
    scenario 'A user can updating a bookmark' do
      Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      visit('/bookmarks')
      expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')

      first('.bookmark').click_button 'Edit'
      fill_in :title, with: "Makers"
      fill_in :url, with: "https://makers.tech/"
      click_button 'Update'
  
      expect(current_path).to eq '/bookmarks'
      expect(page).to have_link('Makers', href: 'https://makers.tech/')
      expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    end
  end