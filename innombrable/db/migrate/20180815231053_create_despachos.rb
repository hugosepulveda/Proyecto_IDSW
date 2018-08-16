class CreateDespachos < ActiveRecord::Migration[5.2]
  def change
    create_table :despachos do |t|
      t.integer :bodeguero_id
      t.integer :orden_id
      t.datetime :fecha
      t.string :comentario
      t.boolean :estado
      t.timestamps
    end
  end
end
