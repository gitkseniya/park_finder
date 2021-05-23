class ParksServices

  def self.get_details(state)
    api_key = ENV['api_key']

    response = conn.get("/api/v1/parks?stateCode=#{state}&api_key=#{api_key}")

    parse_info(response)[:data]
  end

  def self.conn
    Faraday.new(url: "https://developer.nps.gov")
  end

  def self.parse_info(response)
    JSON.parse(response.body, symbolize_names: true)


  end

end
