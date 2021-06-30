class ParksServices < BaseService

  def self.get_details(state)
    response = conn("https://developer.nps.gov").get("/api/v1/parks") do |f|
      f.params["stateCode"] = state
      f.params["api_key"] = ENV['api_key']

    end

    format_json(response)
  end
end
