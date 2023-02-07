json.extract! day, :id, :date, :notes, :rating, :weather_historical, :weather_predicted, :created_at, :updated_at
json.url day_url(day, format: :json)
