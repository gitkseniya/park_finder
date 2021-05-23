class ParksServices

  def self.get_details(state)
    api_key = ENV['api_key']

    conn = Faraday.new(url: "https://developer.nps.gov")

    response = conn.get("/api/v1/parks?stateCode=#{state}&api_key=#{api_key}")

    json = JSON.parse(response.body, symbolize_names: true)

    json[:data]
  end



end
