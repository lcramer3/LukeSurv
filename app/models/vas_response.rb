class VasResponse < ActiveRecord::Base
  belongs_to :user
  has_one :food
  validates :value, :user_id, presence: true
end
