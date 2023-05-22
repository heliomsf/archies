class AddAverageRatingToBuildings < ActiveRecord::Migration[7.0]
  def change
    add_column :buildings, :average_rating, :float
  end
end
