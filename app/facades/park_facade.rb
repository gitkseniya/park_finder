class ParkFacade

  def self.get_details(state)
    ParksServices.get_details(state)
  end

  def self.specific_park(state)
    park = get_details(state)
    park[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end
