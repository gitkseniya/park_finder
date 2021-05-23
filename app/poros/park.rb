class Park
  attr_reader :full_name,
              :description,
              :directions_info,
              :operating_hours

  def initialize(park_data)
    @full_name = park_data[:fullName]
    @description = park_data[:description]
    @directions_info = park_data[:directionsInfo]
    @operating_hours = park_data[:operatingHours]
  end
end
