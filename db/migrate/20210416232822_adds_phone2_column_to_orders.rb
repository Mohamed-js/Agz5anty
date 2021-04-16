class AddsPhone2ColumnToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :phone2, :string
  end
end
