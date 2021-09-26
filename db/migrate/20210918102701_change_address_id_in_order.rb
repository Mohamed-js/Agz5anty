# frozen_string_literal: true

class ChangeAddressIdInOrder < ActiveRecord::Migration[6.1]
  def change
    change_column :orders, :address_id, 'integer USING address_id::INT'
    rename_column :addresses, :datails, :details
  end
end
