json.extract! restaurant, :id, :name, :opened_at, :closed_at, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
