class AddressSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :government, :city, :street, :building_number, :floor, :landmark, :longitude, :latitude
end
