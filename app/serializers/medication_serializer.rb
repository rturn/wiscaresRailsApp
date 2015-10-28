class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :dateEntered, :petID, :name, :frequency
end
