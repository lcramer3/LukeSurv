class Category < ActiveRecord::Base
  has_many :foods, dependent: :destroy

  has_many :users, through: :food_ranks
  
  validates :name, presence: true

end
