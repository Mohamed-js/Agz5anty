class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items
  belongs_to :address
  belongs_to :pharmacy

  def self.ordered_id
    order('id desc')
  end
end
