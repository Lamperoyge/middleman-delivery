class Dish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :order
  validates :name, presence: true
  validates :restaurant_id, presence: true
  validates :price, presence: true
end
