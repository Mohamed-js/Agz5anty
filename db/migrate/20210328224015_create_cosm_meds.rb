# frozen_string_literal: true

class CreateCosmMeds < ActiveRecord::Migration[6.1]
  def change
    create_table :cosm_meds do |t|
      t.string :name
      t.text :description
      t.integer :cosm_cat_id
      t.string :image_data
      t.integer :quantity
      t.integer :price

      t.timestamps
    end
  end
end
