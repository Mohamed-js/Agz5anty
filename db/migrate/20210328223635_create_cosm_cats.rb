class CreateCosmCats < ActiveRecord::Migration[6.1]
  def change
    create_table :cosm_cats do |t|
      t.string :parent
      t.string :name
      t.text :image_data

      t.timestamps
    end
  end
end
