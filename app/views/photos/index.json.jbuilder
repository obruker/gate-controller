json.array!(@photos) do |photo|
  json.extract! photo, :id, :data, :time, :plate_number, :detection_score
  json.url photo_url(photo, format: :json)
end
