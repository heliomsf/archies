class AddDescriptionToRegisters < ActiveRecord::Migration[7.0]
  def change
    add_column :registers, :description, :text
  end
end
