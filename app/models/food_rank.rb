class FoodRank < ActiveRecord::Base
  has_one :food
  belongs_to :user
end
