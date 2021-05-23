class ParksServices

  def self.get_details(state)
    conn = Faraday.new(url: "https://developer.nps.gov", params: {
      "stateCode": state,
      "api_key": ENV['api_key']
      })

    response = conn.get("/api/v1/parks")

    json = JSON.parse(response.body, symbolize_names: true)

    json[:data].map do |park_data|
      Park.new(park_data)
    end
  end

end
