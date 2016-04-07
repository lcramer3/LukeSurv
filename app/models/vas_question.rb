class VasQuestion < ActiveRecord::Base
  has_many :vas_responses
  validates :prompt, :order, presence: true
end
