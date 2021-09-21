class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  belongs_to :address

  def self.ordered_id
    order('id desc')
  end
end
