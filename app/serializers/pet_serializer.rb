class PetSerializer < ActiveModel::Serializer
  attributes :id, :userId, :name, :species, :breed, :gender, :birthDate, :weight
end
