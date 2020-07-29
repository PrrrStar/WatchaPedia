json.extract! model, :id, :name, :published, :country, :rate, :booking_rate, :num_of_people, :rank, :genre, :running_time, :summary, :people, :created_at, :updated_at
json.url model_url(model, format: :json)
