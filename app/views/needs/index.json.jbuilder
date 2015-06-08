json.array!(@needs) do |need|
  json.extract! need, :id
  json.url need_url(need, format: :json)
end
