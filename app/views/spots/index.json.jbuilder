json.array!(@spots) do |spot|
  json.extract! spot, :river, :description
  json.url spot_url(spot, format: :json)
end
