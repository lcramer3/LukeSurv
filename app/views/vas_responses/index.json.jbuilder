json.array!(@vas_responses) do |vas_response|
  json.extract! vas_response, :id, :value, :user_id
  json.url vas_response_url(vas_response, format: :json)
end
