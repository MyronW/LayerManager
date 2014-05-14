json.array!(@pdks) do |pdk|
  json.extract! pdk, :name
  json.url pdk_url(pdk, format: :json)
end