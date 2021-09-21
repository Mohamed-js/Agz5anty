class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :order_items
  has_many :orders
  has_many :addresses
end
