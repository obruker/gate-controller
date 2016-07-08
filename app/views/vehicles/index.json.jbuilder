json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :auto_gate_id, :plate_number, :owner, :phone
  json.url vehicle_url(vehicle, format: :json)
end
