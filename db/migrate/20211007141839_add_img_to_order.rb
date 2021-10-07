class AddImgToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :image_data, :text
    add_column :orders, :img, :string
  end
end
