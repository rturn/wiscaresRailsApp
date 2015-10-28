class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :userID, :petID, :description, :dateToRemind
end
