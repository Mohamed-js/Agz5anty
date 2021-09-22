class OrderSerializer < ActiveModel::Serializer
  has_many :order_items
  belongs_to :user
  attributes :id, :notes, :user, :address, :phone, :phone2, :status, :payment_method
end
