class CreateGovernments < ActiveRecord::Migration[6.1]
  def change
    create_table :governments do |t|
      t.string :name

      t.timestamps
    end
  end
end
