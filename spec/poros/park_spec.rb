require 'rails_helper'

describe 'park' do
  it 'abstracts and encapsulates park data that can be read' do
    park_data =
        {
            "fullName": "Bent's Old Fort National Historic Site",
            "parkCode": "beol",
            "description": "xyz",
            "directionsInfo": "7 miles north",
            "operatingHours": [
                {
                    "exceptions": [
                        {
                            "exceptionHours": {},
                            "startDate": "2022-01-01",
                            "name": "New Year's Day",
                            "endDate": "2022-01-01"
                        },
                        {
                            "exceptionHours": {
                                "wednesday": "8:00AM - 5:30PM",
                                "monday": "8:00AM - 5:30PM",
                                "thursday": "8:00AM - 5:30PM",
                                "sunday": "8:00AM - 5:30PM",
                                "tuesday": "8:00AM - 5:30PM",
                                "friday": "8:00AM - 5:30PM",
                                "saturday": "8:00AM - 5:30PM"
                            },
                            "startDate": "2021-06-01",
                            "name": "Summer",
                            "endDate": "2021-08-31"
                        },
                    ], # exceptions end

                    "standardHours": {
                        "wednesday": "9:00AM - 4:00PM",
                        "monday": "9:00AM - 4:00PM",
                        "thursday": "9:00AM - 4:00PM",
                        "sunday": "9:00AM - 4:00PM",
                        "tuesday": "9:00AM - 4:00PM",
                        "friday": "9:00AM - 4:00PM",
                        "saturday": "9:00AM - 4:00PM"
                    }
                  } ] }




  park =  Park.new(park_data)

  expect(park.full_name).to eq "Bent's Old Fort National Historic Site"
  expect(park.description).to eq "xyz"
  expect(park.directions_info).to eq "7 miles north"
  expect(park.operating_hours).to be_an(Array)
  end
end
