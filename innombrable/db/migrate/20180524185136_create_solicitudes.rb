class CreateSolicitudes < ActiveRecord::Migration[5.2]
  def change
    create_table :solicitudes do |t|
      t.string :material
      t.integer :cantidad
      t.integer :prioridad
      t.integer :cliente_id
      t.string :estado
      t.integer :encargado_id
      t.integer :bodeguero_id
      t.timestamps
    end
  end
end
