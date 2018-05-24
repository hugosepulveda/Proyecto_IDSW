class CreateSolicitudes < ActiveRecord::Migration[5.2]
  def change
    create_table :solicitudes do |t|
      t.string :material
      t.integer :cant_material
      t.integer :prioridad
      t.integer :usuario_id #arreglar foraneas
      t.integer :estado
      t.integer :encargado_id
      t.integer :bodeguero_id
      t.timestamps
    end
  end
end
