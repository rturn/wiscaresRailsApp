class HealthProblemSerializer < ActiveModel::Serializer
  attributes :id, :dateEntered, :petID, :description, :dateOccurred
end
