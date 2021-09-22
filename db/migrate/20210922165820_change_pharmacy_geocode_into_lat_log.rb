class ChangePharmacyGeocodeIntoLatLog < ActiveRecord::Migration[6.1]
  def change
    add_column :pharmacies, :latitude, :decimal
    add_column :pharmacies, :longitude, :decimal
    remove_column :pharmacies, :geocode
  end
end
