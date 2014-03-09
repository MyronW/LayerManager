json.array!(@stipples) do |stipple|
  json.extract! stipple, :name, :pattern
  json.url stipple_url(stipple, format: :json)
end