class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  belongs_to :address
end
