class CreateRetiroBodegas < ActiveRecord::Migration[5.2]
  def change
    create_table :retiro_bodegas do |t|
      t.integer :bodeguero_id
      t.integer :solicitud_id
      t.datetime :fecha_retiro
      t.integer :cantidad

      t.timestamps
    end
  end
end
