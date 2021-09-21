class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items
    has_many :addresses, through: :user

    def address
        Address.find(address_id)
    end
end
