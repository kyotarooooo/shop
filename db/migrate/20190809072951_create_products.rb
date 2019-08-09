class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|

      t.timestamps
      t.string :product_name
      t.integer :price
      t.integer :stock
    end
  end
end
