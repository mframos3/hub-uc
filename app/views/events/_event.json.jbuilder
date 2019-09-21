json.extract! event, :id, :name, :e_type, :created_at, :updated_at
json.url event_url(event, format: :json)
