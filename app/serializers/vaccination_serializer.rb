class VaccinationSerializer < ActiveModel::Serializer
  attributes :id, :dateEntered, :petID, :name, :dateGiven
end
