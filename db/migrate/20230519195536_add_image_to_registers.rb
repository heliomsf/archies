class AddImageToRegisters < ActiveRecord::Migration[7.0]
  def change
    add_column :registers, :image, :string
  end
end
