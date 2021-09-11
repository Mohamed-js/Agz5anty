class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.text :datails
      t.integer :user_id
      t.string :geocode

      t.timestamps
    end
  end
end
