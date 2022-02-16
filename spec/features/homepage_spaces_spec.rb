feature 'homepage_spaces button' do 

  scenario' a user can click button to goto spaces view page' do 
    
    add_row_to_test_database
    visit('/')
    click_button "View Properties"
    expect(page).to have_content 'standard flat'
  end
end