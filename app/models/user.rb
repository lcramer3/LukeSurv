class User < ActiveRecord::Base
  has_many :categories
  has_many :food_ranks
  has_many :vas_responses, dependent: :destroy
end
