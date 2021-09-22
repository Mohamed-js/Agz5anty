class AddOpenAndCloseTimes < ActiveRecord::Migration[6.1]
  def change
    add_column :pharmacies, :opens_at, :integer
    add_column :pharmacies, :closes_at, :integer
  end
end
