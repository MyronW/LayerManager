json.array!(@cadence_purposes) do |cadence_purpose|
  json.extract! cadence_purpose, :name, :number
  json.url cadence_purpose_url(cadence_purpose, format: :json)
end