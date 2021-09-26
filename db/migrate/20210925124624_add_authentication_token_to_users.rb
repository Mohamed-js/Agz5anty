# frozen_string_literal: true

class AddAuthenticationTokenToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :pharmacies, :authentication_token, :string, limit: 30
    add_index :pharmacies, :authentication_token, unique: true
  end
end
