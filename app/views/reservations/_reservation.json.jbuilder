json.extract! reservation, :id, :table_id, :starts_at, :ends_at, :user_name, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
