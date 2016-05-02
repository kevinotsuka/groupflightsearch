json.array!(@flightsearches) do |flightsearch|
  json.extract! flightsearch, :id, :departure_date, :arrival_date, :airport
  json.url flightsearch_url(flightsearch, format: :json)
end
