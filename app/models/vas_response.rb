class VasResponse < ActiveRecord::Base
  belongs_to :user
  has_one :food
end
