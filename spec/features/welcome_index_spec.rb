require 'rails_helper'
# require 'json'
# require 'faraday'

RSpec.describe 'welcome index page' do
  describe 'happy path' do

  it 'shows welcome index search bar' do
    visit root_path

    expect(page).to have_link('Park Search', href: root_path)
    expect(page).to have_select(:state, :with_options => ['Alabama', 'Colorado'])
    expect(page).to have_button('Find Parks')
    end

    it 'selects the state from dropdown', :vcr do
      visit root_path

      select "Colorado", :from => :state

      click_button 'Find Parks'

      expect(page).to have_content("Rocky Mountain")

    end
  end
end
