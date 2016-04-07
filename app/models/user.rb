class User < ActiveRecord::Base
  has_many :food_ranks
  has_many :categories, through: :food_ranks
  has_many :foods, through: :food_ranks

  has_many :vas_responses, dependent: :destroy
  validates :name, presence: true
end
