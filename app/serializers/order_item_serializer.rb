class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :item_type, :quantity, :order_id, :item
end
