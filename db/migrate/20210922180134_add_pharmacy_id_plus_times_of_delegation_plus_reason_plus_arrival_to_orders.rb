class AddPharmacyIdPlusTimesOfDelegationPlusReasonPlusArrivalToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :pharmacy_id, :integer
    add_column :orders, :not_found_times, :integer
    add_column :orders, :time_to_arrive, :date
  end
end
