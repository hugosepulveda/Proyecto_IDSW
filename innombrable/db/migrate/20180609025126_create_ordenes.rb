class CreateOrdenes < ActiveRecord::Migration[5.2]
  def change
    create_table :ordenes do |t|

      t.timestamps
    end
  end
end
