class CartItem < ApplicationRecord
  belongs_to :user

  def self.give_all(user_id)
    cosmetics = CartItem.where(item_type: 'cosmetics', user_id: user_id).order('created_at DESC')
    medications = CartItem.where(item_type: 'medications', user_id: user_id).order('created_at DESC')
    (medications + cosmetics)
  end

  def self.give_all_with_items(user_id)
    give_all(user_id).map do |one|
      item = one.item_type == 'medications' ? Medication.where(id: one.item_id) : CosmMed.where(id: one.item_id)
      position = one.to_json.length
      to_insert = { item: item.first }.to_json.slice(1..{ item: item.first }.to_json.length - 2)
      one.to_json.insert(position - 1, ",#{to_insert}")
    end
  end
end
