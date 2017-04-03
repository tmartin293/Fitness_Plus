json.extract! user_info, :id, :age, :height, :skill_level, :weight, :created_at, :updated_at
json.url user_info_url(user_info, format: :json)
