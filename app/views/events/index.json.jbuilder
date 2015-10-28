json.array!(@events) do |event|
  json.extract! event, :id, :dateEntered, :petID
  json.url event_url(event, format: :json)
end
