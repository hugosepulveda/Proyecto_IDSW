class CreateBodegas < ActiveRecord::Migration[5.2]
  def change
    create_table :bodegas do |t|
      t.datetime :horario
      t.integer :numero
      t.string :calle
      t.string :comuna
      #t.integer :bodeguero_id
      t.timestamps
    end
  end
end
