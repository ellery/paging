json.array!(@agencies) do |agency|
  json.extract! agency, :id, :title, :address, :city, :zip, :phone
  json.url agency_url(agency, format: :json)
end
