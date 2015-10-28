json.array!(@medications) do |medication|
  json.extract! medication, :id, :dateEntered, :petID, :name, :frequency
  json.url medication_url(medication, format: :json)
end
