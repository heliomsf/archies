class AddAverageRatingToRegisters < ActiveRecord::Migration[7.0]
  def change
    add_column :registers, :average_rating, :float
  end
end
