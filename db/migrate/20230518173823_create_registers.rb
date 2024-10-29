class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :registers, if_not_exists: true do |t|
      t.string :cdgpdf
      t.string :ref
      t.string :autorcargo
      t.string :destinatariocargo
      t.string :titulo
      t.string :local
      t.string :data1
      t.string :data2
      t.string :data3
      t.string :acesso
      t.string :obs

      t.timestamps
    end
  end
end
