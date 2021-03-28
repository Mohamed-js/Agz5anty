class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :item
      t.integer :quantity
      t.integer :tprice
      t.integer :user_id
      t.string :phone
      t.string :city
      t.string :center
      t.text :address

      t.timestamps
    end
  end
end
