class AddressSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :addresses, through: :user
  attributes :id, :details, :geocode
end
