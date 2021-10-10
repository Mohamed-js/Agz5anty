class ChangeMedicationTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :medications, :description
    remove_column :medications, :dose
    remove_column :medications, :sub
    remove_column :medications, :ingredients
    remove_column :medications, :main
    remove_column :medications, :quantity

    add_column :medications, :ar_name, :string
    add_column :medications, :generic_name, :string, :default => '-'
    add_column :medications, :company, :string, :default => '-'
    add_column :medications, :ar_company, :string, :default => '-'
    add_column :medications, :category_name, :string, :default => '-'
    add_column :medications, :ar_category_name, :string, :default => '-'
    add_column :medications, :ar_shape, :string, :default => '-'
  end
end
