class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :product
  validates :name, presence: true
  validates :restaurant_id, presence: true
  validates :price, presence: true
end
