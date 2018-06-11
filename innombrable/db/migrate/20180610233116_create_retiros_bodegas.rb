class CreateRetirosBodegas < ActiveRecord::Migration[5.2]
  def change
    create_table :retiros_bodegas do |t|
      t.datetime :fecha
      t.integer :cantidad
      t.integer :solicitud_id
      t.integer :bodeguero_id
      t.timestamps
    end
  end
end
