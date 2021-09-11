class ChangeOrder < ActiveRecord::Migration[6.1]
  def change
    change_column_default :orders, :status, "pending"
    rename_column :orders, :address, :address_id
  end
end
