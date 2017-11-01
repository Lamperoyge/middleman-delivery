class AddToDish < ActiveRecord::Migration[5.0]
  def change
    add_reference :dishes, :restaurant, foreign_key: true
    add_reference :dishes, :order, foreign_key: true
  end
end
