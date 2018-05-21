class CreateBodegas < ActiveRecord::Migration[5.2]
  def change
    create_table :bodegas do |t|
      t.datetime :horario
      t.string :direccion
      t.string :comuna

      t.timestamps
    end
  end
end
