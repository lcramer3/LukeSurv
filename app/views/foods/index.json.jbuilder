json.array!(@foods) do |food|
  json.extract! food, :id, :name, :category_id
  json.url food_url(food, format: :json)
end
