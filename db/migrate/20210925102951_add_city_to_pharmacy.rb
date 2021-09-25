class AddCityToPharmacy < ActiveRecord::Migration[6.1]
  def change
    add_column :pharmacies, :government, :string
    add_column :pharmacies, :city, :string
    add_column :addresses, :government, :string
    add_column :addresses, :city, :string
    add_column :addresses, :street, :string
    add_column :addresses, :building_number, :string
    add_column :addresses, :floor, :string
    add_column :addresses, :landmark, :string

    remove_column :pharmacies, :address
    remove_column :addresses, :details
  end
end
