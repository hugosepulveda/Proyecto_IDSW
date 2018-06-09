class CreateObras < ActiveRecord::Migration[5.2]
  def change
    create_table :obras do |t|
      t.string :nombre
      t.string :numero
      t.string :calle
      t.string :comuna
      t.string :tipo
      t.string :cliente
      t.timestamps
    end
  end
end
