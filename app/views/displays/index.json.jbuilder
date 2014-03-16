json.array!(@displays) do |display|
  json.extract! display, :name, :stipple_id, :fill_id, :border_id
  json.url display_url(display, format: :json)
end