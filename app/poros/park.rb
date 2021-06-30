class Park
  attr_reader :full_name,
              :description,
              :directions_info,
              :operating_hours

  def initialize(park_data)
    @full_name = park_data[:fullName]
    @description = park_data[:description]
    @directions_info = park_data[:directionsInfo]
    @ohours = park_data[:operatingHours]
  end

    def operating_hours
      @ohours.map do |h|
           h[:standardHours].map do |day, hours|
              "#{day.capitalize}, #{hours}"
            end
          end.flatten
        end


end
