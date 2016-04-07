class FoodRank < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :food

  #validates :rank, :user_id, :category_id, :food_id, presence: true
end
