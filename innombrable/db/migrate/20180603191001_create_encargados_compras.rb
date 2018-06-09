class CreateEncargadosCompras < ActiveRecord::Migration[5.2]
  def change
    create_table :encargados_compras do |t|
      t.integer :usuario_id
      t.integer :solicitude_id
      t.timestamps
    end
  end
end
