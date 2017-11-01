class AddNameToDish < ActiveRecord::Migration[5.0]
  def change
    add_column :dishes, :name, :string
    add_column :dishes, :price, :string
    add_column :dishes, :options, :string
  end
end
