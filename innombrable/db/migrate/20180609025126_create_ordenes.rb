class CreateOrdenes < ActiveRecord::Migration[5.2]
  def change
    create_table :ordenes do |t|
      t.integer :encargado_id
      t.integer :proveedor_id
      t.timestamps
    end
  end
end
