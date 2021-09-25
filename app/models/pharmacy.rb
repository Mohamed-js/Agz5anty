class Pharmacy < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_token_authenticatable
  has_secure_password
  reverse_geocoded_by :latitude, :longitude
  has_many :orders

  def self.in_city(city, government)
    where("lower(city) ILIKE '#{city}%' AND lower(government) ILIKE '#{government}%'")
  end

  def self.in_government(government)
    where("lower(government) ILIKE '#{government}%'")
  end

  def pending_orders
    orders.where(status: 'pending')
  end
end
