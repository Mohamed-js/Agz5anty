# frozen_string_literal: true

class ChangeAddressGeocodeIntoLatLog < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :geocode
    remove_column :addresses, :geocode
    add_column :addresses, :latitude, :decimal
    add_column :addresses, :longitude, :decimal
  end
end
