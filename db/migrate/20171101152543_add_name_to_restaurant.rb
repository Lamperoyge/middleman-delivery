class AddNameToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :address, :string
  end
end
