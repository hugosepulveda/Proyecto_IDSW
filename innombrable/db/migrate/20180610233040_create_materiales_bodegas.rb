class CreateMaterialesBodegas < ActiveRecord::Migration[5.2]
  def change
    create_table :materiales_bodegas do |t|
      t.integer :material_id
      t.integer :bodega_id
      t.timestamps
    end
  end
end
