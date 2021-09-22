class AddressSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :details, :geocode
end
