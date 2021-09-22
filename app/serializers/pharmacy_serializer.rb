class PharmacySerializer < ActiveModel::Serializer
  attributes :id, :orders
  has_many :orders
end
