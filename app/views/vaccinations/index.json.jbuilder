json.array!(@vaccinations) do |vaccination|
  json.extract! vaccination, :id, :dateEntered, :petID, :name, :dateGiven
  json.url vaccination_url(vaccination, format: :json)
end
