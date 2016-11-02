json.extract! trip, :id, :name, :dates, :city, :country, :departing_flight, :return_flight, :created_at, :updated_at
json.url trip_url(trip, format: :json)