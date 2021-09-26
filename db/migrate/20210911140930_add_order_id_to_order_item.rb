# frozen_string_literal: true

class AddOrderIdToOrderItem < ActiveRecord::Migration[6.1]
  def change
    add_column :order_items, :order_id, :integer
  end
end
