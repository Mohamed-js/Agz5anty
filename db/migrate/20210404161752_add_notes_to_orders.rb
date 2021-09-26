# frozen_string_literal: true

class AddNotesToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :notes, :text
  end
end
