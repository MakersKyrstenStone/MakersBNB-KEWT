require 'pg'

feature 'Viewing spaces' do

  scenario 'A user can view spaces in browser' do

    visit('/spaces')

    expect(page).to have_content "Desert Island"
    expect(page).to have_content "standard flat"
    expect(page).to have_content "Palace"
    expect(page).to have_content "Beautiful Country Estate"
  end

end
