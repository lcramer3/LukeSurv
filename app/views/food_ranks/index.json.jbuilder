json.array!(@food_ranks) do |food_rank|
  json.extract! food_rank, :id, :rank
  json.url food_rank_url(food_rank, format: :json)
end
