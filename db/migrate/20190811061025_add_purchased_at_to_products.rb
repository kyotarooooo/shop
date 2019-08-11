class AddPurchasedAtToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :purchased_at, :datetime
    add_column :products, :purchase, :boolean, null: false, default: false
  end
end
