json.extract! photo, :id, :data, :time, :plate_number, :detection_score, :created_at, :updated_at
json.url photo_url(photo, format: :json)