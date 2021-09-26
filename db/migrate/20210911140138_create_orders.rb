# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :phone
      t.string :phone2
      t.text :address
      t.text :notes
      t.string :status
      t.string :geocode
      t.integer :user_id

      t.timestamps
    end
  end
end
