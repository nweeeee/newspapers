class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :daily, :price
  validates :price, presence: true
  validates_inclusion_of :daily, in: [true, false]
  belongs_to :newspaper
  has_many :subscriptions
end
