class CartItem < ApplicationRecord
    belongs_to :user
    belongs_to :medication, foreign_key: 'item_id'
    belongs_to :cosm_med, foreign_key: 'item_id'
end
