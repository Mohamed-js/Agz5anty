class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :item_id
      t.integer :user_id
      t.string :item_type
      t.integer :quantity

      t.timestamps
    end
  end
end
