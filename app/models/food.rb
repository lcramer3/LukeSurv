class Food < ActiveRecord::Base
  belongs_to :category

  has_many :users, through: :food_ranks

  has_many :vas_responses

  validates :name, :category_id, presence: true
end
