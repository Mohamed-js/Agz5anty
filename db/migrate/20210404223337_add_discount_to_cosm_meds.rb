class AddDiscountToCosmMeds < ActiveRecord::Migration[6.1]
  def change
    add_column :cosm_meds, :discount, :integer
  end
end
