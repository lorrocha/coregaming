require 'spec_helper'

feature 'An administrative user can create a new event' do

  scenario 'User can submit the event with everyone filled in' do
    visit new_event_path

    thename = 'Super Shaq Sale'

    fill_in 'Name', with: thename
    fill_in 'Description', with: 'This is the best most Shaqiest sale ever'
    fill_in 'Date', with: 'Feb 3rd at 4pm'
    fill_in 'Location', with: 'Core Gaming'
    click_button 'Create Event'

    expect(page).to have_content(thename)
  end

end
