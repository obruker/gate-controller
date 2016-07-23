json.array!(@photos) do |photo|
  json.extract! photo, :id, :data, :time
  json.url photo_url(photo, format: :json)
end
