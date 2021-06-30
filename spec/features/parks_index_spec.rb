require 'rails_helper'

RSpec.describe 'Parks index page' do

  describe 'when a user visits the parks index path', :vcr do
      it 'displays total parks and details for each park in the chosen state' do
      visit root_path
      select "Tennessee", :from => :state
      click_button "Find Parks"

      expect(current_path).to eq(parks_path)
      expect(page).to have_content('Total of parks found: 15')
      expect(page).to have_content('Andrew Johnson National Historic Site')
      expect(page).to have_content("Description Andrew Johnson's complex presidency (1865-69) illustrates")
      expect(page).to have_content("Directions GPS The GPS setting for Andrew Johnson NHS may be listed as 121 Monument Ave, which is the park HQ in the National Cemetery. To arrive at the Visitor Center")
      expect(page).to have_content('Monday, 9:00AM - 4:00PM')
    end
  end
end
