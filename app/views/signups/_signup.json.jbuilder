json.extract! signup, :id, :Name, :email, :password, :created_at, :updated_at
json.url signup_url(signup, format: :json)