class CreateCotizaciones < ActiveRecord::Migration[5.2]
  def change
    create_table :cotizaciones do |t|
      t.integer :proveedor_id
      t.timestamps
    end
  end
end
