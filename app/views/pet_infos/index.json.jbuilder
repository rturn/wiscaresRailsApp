json.array!(@pet_infos) do |pet_info|
  json.extract! pet_info, :id, :userId, :name, :species, :breed, :gender, :birthDate, :weight
  json.url pet_info_url(pet_info, format: :json)
end
