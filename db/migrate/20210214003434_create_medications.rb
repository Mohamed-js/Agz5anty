# frozen_string_literal: true

class CreateMedications < ActiveRecord::Migration[6.1]
  def change
    create_table :medications do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :main
      t.string :sub
      t.string :ingredients
      t.string :shape
      t.string :dose
      t.integer :quantity
      t.text :image_data
      t.string :availability

      t.timestamps
    end
  end
end
