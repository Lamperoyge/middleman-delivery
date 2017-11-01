class AddValueToRating < ActiveRecord::Migration[5.0]
  def change
    add_column :ratings, :value, :boolean
  end
end
