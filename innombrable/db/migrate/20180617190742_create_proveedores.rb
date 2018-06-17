class CreateProveedores < ActiveRecord::Migration[5.2]
  def change
    create_table :proveedores do |t|
      t.integer :telefono
      t.string :email
      t.string :tipo
      t.timestamps
    end
  end
end
