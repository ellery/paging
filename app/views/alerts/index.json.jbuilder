json.array!(@alerts) do |alert|
  json.extract! alert, :id, :tone_set_id, :notes, :address
  json.url alert_url(alert, format: :json)
end
