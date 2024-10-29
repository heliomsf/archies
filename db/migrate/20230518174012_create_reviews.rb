class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews, if_not_exists: true do |t|
      t.string :title
      t.text :content
      t.integer :rating
      t.references :register, null: false, foreign_key: true

      t.timestamps
    end
  end
end
