json.array!(@update_times) do |update_time|
  json.extract! update_time, :id
  json.url update_time_url(update_time, format: :json)
end
