class Order < ApplicationRecord
  has_many :products
  has_many :dishes, through: :products
  belongs_to :user
  belongs_to :restaurant
end
