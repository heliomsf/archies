class AddImageToBuildings < ActiveRecord::Migration[7.0]
  def change
    add_column :buildings, :image, :string
  end
end
