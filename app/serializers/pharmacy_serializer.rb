class PharmacySerializer < ActiveModel::Serializer
  attributes :id, :orders, :doctor, :name, :authentication_token
  has_many :orders
end
