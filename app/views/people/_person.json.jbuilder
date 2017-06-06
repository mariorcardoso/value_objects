json.extract! person, :id, :name, :address_city, :address_state, :created_at, :updated_at
json.url person_url(person, format: :json)
