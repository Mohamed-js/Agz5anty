class AddCategoryToCosmMed < ActiveRecord::Migration[6.1]
  def change
    add_column :cosm_meds, :category, :string
    add_column :cosm_meds, :sub_category, :string
  end
end
