# frozen_string_literal: true

class AddDoneToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :done, :boolean
  end
end
