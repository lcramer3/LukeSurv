class Food < ActiveRecord::Base
  belongs_to :category
  has_many :food_ranks
  has_many :vas_responses
end
