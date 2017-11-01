class Order < ApplicationRecord
  has_many :dishes
  belongs_to :user
  belongs_to :restaurant
  validates :dish_id, presence: true
end
