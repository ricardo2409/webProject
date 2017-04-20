json.extract! trainee, :id, :name, :last_name, :notes, :trainer_id, :created_at, :updated_at
json.url trainee_url(trainee, format: :json)
