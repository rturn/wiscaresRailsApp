class VisitSerializer < ActiveModel::Serializer
  attributes :id, :dateEntered, :petID, :location, :dateVisited
end
