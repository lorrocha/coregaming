require 'spec_helper'

feature 'A viewer can find info on homepage', %{
    As a user,
    I want to visit the main page
    So that I can find core information easily
} do

  before(:each) do
    visit root_path
  end

  scenario 'a visitor can see the home page' do
    expect(page).to have_content('CORE Gaming')
  end

  scenario 'The home page includes the address' do
    expect(page).to have_content('19 N Broadway, Salem, NH 03079')
  end

  scenario 'The home page includes the store phone number' do
    expect(page).to have_content('(603) 458-5791')
  end

  scenario 'The home page includes store hours' do
    expect(page).to have_content('Store Hours:')
  end

end
