class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings, if_not_exists: true do |t|
      t.string :name
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :country
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
