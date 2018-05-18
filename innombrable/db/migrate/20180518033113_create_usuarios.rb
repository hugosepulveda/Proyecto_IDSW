class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombres
      t.string :apellidos
      t.string :tipo
      t.integer :obra_id
      t.integer :contrasena

      t.timestamps
    end
  end
end
