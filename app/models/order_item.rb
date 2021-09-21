class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :user

  def item
    item_type == 'medications' ? Medication.find(item_id) : CosmMed.find(item_id)
  end
end
