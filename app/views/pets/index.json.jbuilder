json.array!(@pets) do |pet|
  json.extract! pet, :id, :userId, :name, :species, :breed, :gender, :birthDate, :weight
end
