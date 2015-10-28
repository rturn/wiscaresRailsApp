json.array!(@vets) do |vet|
  json.extract! vet, :id, :name, :address, :contact, :userID, :petID
  json.url vet_url(vet, format: :json)
end
