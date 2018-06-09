class CreateMateriales < ActiveRecord::Migration[5.2]
  def change
    create_table :materiales do |t|
      t.string :nombre
      t.integer :cantidad
      t.boolean :disponible
      t.integer :bodega_id
      t.string :tipo
      t.string :comentario
      t.timestamps
    end
  end
end
