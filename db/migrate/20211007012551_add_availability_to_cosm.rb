class AddAvailabilityToCosm < ActiveRecord::Migration[6.1]
  def change
    add_column :cosm_meds, :availability, :string, :default => "true"
  end
end
