json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :userID, :petID, :description, :dateToRemind
  json.url reminder_url(reminder, format: :json)
end
