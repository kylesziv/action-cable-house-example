json.array!(@houses) do |house|
  json.extract! house, :id, :latitude, :longitude, :address, :zipcode, :created_at, :updated_at
  json.url house_url(house, format: :json)
end
