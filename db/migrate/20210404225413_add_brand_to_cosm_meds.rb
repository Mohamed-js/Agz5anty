# frozen_string_literal: true

class AddBrandToCosmMeds < ActiveRecord::Migration[6.1]
  def change
    add_column :cosm_meds, :brand, :string
  end
end
