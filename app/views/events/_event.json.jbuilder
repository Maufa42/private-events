json.extract! event, :id, :title, :location, :description, :event_date, :created_at, :updated_at
json.url event_url(event, format: :json)
