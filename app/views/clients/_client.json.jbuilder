json.extract! client, :id, :Name, :Email, :PhoneNumber, :Description, :created_at, :updated_at
json.url client_url(client, format: :json)
