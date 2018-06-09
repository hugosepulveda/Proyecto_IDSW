class CreateBodegueros < ActiveRecord::Migration[5.2]
  def change
    create_table :bodegueros do |t|
      t.integer :usuario_id
      t.integer :bodega_id
      t.timestamps
    end
  end
end
