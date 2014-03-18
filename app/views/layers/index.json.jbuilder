json.array!(@layers) do |layer|
  json.extract! layer, :name, :description, :gds_number, :gds_purpose, :display, :cadence_number, :cadence_purpose
  json.url layer_url(layer, format: :json)
end