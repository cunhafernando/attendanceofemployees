json.extract! user, :id, :username, :firstname, :lastname, :registration, :role, :password_digest, :created_at, :updated_at
json.url user_url(user, format: :json)
