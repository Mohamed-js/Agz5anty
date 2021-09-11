class DropProductsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :orders
    drop_table :carts
  end
end
