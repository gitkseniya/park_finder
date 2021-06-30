require 'rails_helper'

RSpec.describe "Parks Service" do
  describe "parks_by_state" do
    it "returns park data", :vcr do

      # json_response = File.read('spec/fixtures/parks_TN_webmock.json')
      #
      # stub_request(:get, "https://developer.nps.gov/api/v1/parks?api_key=0Ff6h9i7XRrue7rAFd3g6PdjIIKFXCahkd3UgaGH&stateCode=TN").
      #          with(
      #            headers: {
      #        	  'Accept'=>'*/*',
      #        	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      #        	  'User-Agent'=>'Faraday v1.0.1'
      #            }).
      #          to_return(status: 200, body: json_response, headers: {})

        data = ParksServices.get_details("TN")
        expect(data[:data].count).to eq(15)
        expect(data).to be_a Hash
        expect(data[:data]).to be_an Array

        park_data = data[:data].first
        expect(park_data).to have_key :name
        expect(park_data[:fullName]).to be_a(String)
        expect(park_data).to have_key :description
        expect(park_data[:description]).to be_a(String)
        expect(park_data).to have_key :directionsInfo
        expect(park_data[:directionsInfo]).to be_a(String)
        expect(park_data).to have_key :operatingHours
        expect(park_data[:operatingHours]).to be_an(Array)
    end
  end
end
