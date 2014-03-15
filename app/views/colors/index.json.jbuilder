json.array!(@colors) do |color|
  json.extract! color, :name, :hex
  json.url color_url(color, format: :json)
end