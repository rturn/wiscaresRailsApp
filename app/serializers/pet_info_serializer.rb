class PetInfoSerializer < ActiveModel::Serializer
  attributes :userId, :name, :species, :breed, :gender, :birthDate, :weight
end