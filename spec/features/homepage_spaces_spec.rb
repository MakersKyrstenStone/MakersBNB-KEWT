feature 'homepage_spaces button' do 

  scenario' a user can click button to goto spaces view page' do 

    visit('/')
    click_button "View Properties"
    expect(page).to have_content 'Standard flat'
  end
end