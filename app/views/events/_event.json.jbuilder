json.extract! event, :id, :name, :address_city, :address_state, :start_date, :end_date, :created_at, :updated_at
json.url event_url(event, format: :json)
