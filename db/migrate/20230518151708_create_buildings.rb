class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :neighborhood
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
