class Product < ApplicationRecord
  belongs_to :order
  belongs_to :dish
end
