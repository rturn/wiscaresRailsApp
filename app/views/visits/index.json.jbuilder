json.array!(@visits) do |visit|
  json.extract! visit, :id, :dateEntered, :petID, :location, :dateVisited
  json.url visit_url(visit, format: :json)
end
