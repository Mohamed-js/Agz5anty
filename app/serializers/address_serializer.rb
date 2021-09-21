class AddressSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :addresses
  attributes :id, :details, :geocode
end
