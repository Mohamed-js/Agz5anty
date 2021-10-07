class OrderSerializer < ActiveModel::Serializer
  has_many :order_items
  belongs_to :user
  attributes :id, :notes, :img, :image_data, :user, :address, :phone, :phone2, :status, :payment_method, :created_at
end
