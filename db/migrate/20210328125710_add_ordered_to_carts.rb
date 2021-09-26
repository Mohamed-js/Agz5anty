# frozen_string_literal: true

class AddOrderedToCarts < ActiveRecord::Migration[6.1]
  def change
    add_column :carts, :ordered, :string
  end
end
