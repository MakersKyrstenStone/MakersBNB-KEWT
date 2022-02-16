feature 'booking button' do 

  scenario' a user can click button to book space' do 

    visit('/spaces')
    first(:button, "BOOK!").click
    expect(page).to have_content 'Booking request received.'
  end
end