class VetSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :contact, :userID, :petID
end
