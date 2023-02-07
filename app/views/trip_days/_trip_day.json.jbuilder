json.extract! trip_day, :id, :trip_id, :day_id, :review, :date, :weather_predicted, :created_at, :updated_at
json.url trip_day_url(trip_day, format: :json)
