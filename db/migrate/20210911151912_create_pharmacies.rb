class CreatePharmacies < ActiveRecord::Migration[6.1]
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.string :geocode
      t.text :address
      t.string :doctor
      t.string :phone
      t.string :landline

      t.timestamps
    end
  end
end
