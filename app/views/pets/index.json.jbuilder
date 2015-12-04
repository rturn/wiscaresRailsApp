json.array!(@pets) do |pet|
  json.extract! pet, :id, :userId, :name, :species, :breed, :gender, :birthDate, :weight, :photo_url
  json.url pet_url(pet, format: :json)
end
