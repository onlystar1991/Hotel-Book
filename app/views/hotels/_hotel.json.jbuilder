json.extract! hotel, :id, :name, :price_2hour, :price_3hour, :latitude, :longitude, :created_at, :updated_at
json.url hotel_url(hotel, format: :json)