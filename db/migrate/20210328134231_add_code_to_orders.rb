# frozen_string_literal: true

class AddCodeToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :code, :integer
  end
end
