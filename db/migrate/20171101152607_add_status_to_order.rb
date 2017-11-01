class AddStatusToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :status, :string
    add_column :orders, :address, :string
    add_column :orders, :additional_info, :text
  end
end
