json.array!(@receivers) do |receiver|
  json.extract! receiver, :id, :location, :frequency, :user_id, :latitude, :longitude, :haat
  json.url receiver_url(receiver, format: :json)
end
