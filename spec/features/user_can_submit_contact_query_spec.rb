require 'spec_helper'

feature 'A user can submit a contact us feedback form' do

  scenario 'A user can submit a form with info' do
    ActionMailer::Base.deliveries = []

    visit new_contact_path

    fill_in "First name", with: 'Lawrence'
    fill_in "Last name", with: 'of Arabia'
    fill_in "Email", with: 'L@arabia.com'
    fill_in "Subject", with: 'Too much sand'
    fill_in "Description", with: 'There is too much sand in my shoes. Help.'
    click_button "Submit Contact"

    expect(Contact.all.count).to eql(1)
    expect(page).to have_content('Your contact has been submitted! You should hear back shortly.')

    expect(ActionMailer::Base.deliveries.size).to eql(1)
    last_email = ActionMailer::Base.deliveries.last
  end

  scenario 'A user cannot submit a contact inquiry if they dont fill in values' do
    visit new_contact_path
    click_button "Submit Contact"

    expect(page).to have_content("can't be blank")
  end

end
