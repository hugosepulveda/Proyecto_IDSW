class CreateClientesInternos < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes_internos do |t|
      t.integer :usuario_id
      t.integer :bodega_id
      t.timestamps
    end
  end
end
