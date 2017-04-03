json.extract! personal_info, :id, :height_ft, :height_in, :weight, :age, :created_at, :updated_at
json.url personal_info_url(personal_info, format: :json)
