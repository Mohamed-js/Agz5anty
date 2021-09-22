class AddressSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :details, :longitude, :latitude
end
