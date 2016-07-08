json.array!(@auto_gates) do |auto_gate|
  json.extract! auto_gate, :id, :name, :open_code, :shared_secret
  json.url auto_gate_url(auto_gate, format: :json)
end
