class AddReferenceToProduct < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :dish, foreign_key: true
  end
end
