class CreateOrdenes < ActiveRecord::Migration[5.2]
  def change
    create_table :ordenes do |t|
      t.integer :encargado_id
      t.integer :proveedor_id
      t.string :forma_pago
      t.string :direccion_entrega
      t.datetime :fecha_entrega
      t.integer :costo
      t.boolean :archivado
      t.boolean :bloqueado
      t.string :comentarios
      t.timestamps
    end
  end
end
