class AddCategoryIdToMedications < ActiveRecord::Migration[6.1]
  def change
    add_column :medications, :category_id, :integer
  end
end
