require 'rails_helper'

RSpec.describe 'ParksFacades' do
  it "returns an array of park objects", :vcr do

    facade = ParkFacade.get_details("TN")

    expect(facade).to be_an Array
    expect(facade.first).to be_a Park
  end
end
