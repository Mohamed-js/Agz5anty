class AddImgToCosm < ActiveRecord::Migration[6.1]
  def change
    add_column :cosm_meds, :img, :string
    add_column :medications, :img, :string
  end
end
