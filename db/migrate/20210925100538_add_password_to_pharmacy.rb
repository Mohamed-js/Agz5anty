# frozen_string_literal: true

class AddPasswordToPharmacy < ActiveRecord::Migration[6.1]
  def change
    add_column :pharmacies, :password, :string
  end
end
