require 'spec_helper'

feature 'An administrative user can create a new event' do

  let(:thename) {'Super Shaq Sale'}
  let(:thedesc) {'This is the best most Shaqiest sale ever'}
  let(:thedate) {'Feb 3rd at 4pm'}

  scenario 'User can submit the event with everyone filled in' do
    visit new_event_path

    fill_in 'Name', with: thename
    fill_in 'Description', with: thedesc
    fill_in 'Date', with: thedate
    fill_in 'Location', with: 'Core Gaming'
    click_button 'Create Event'

    expect(page).to have_content(thename)
  end

  scenario 'Location will always default to Core Gaming' do
    visit new_event_path

    fill_in 'Name', with: thename
    fill_in 'Description', with: thedesc
    fill_in 'Date', with: thedate

    click_button 'Create Event'

    expect(page).to have_content(thename)
  end

  scenario 'Event is not created if missing fields' do
    visit new_event_path

    click_button 'Create Event'
    expect(page).to have_content("can't be blank")
  end

end
