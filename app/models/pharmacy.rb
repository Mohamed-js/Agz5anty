class Pharmacy < ApplicationRecord
  acts_as_token_authenticatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  reverse_geocoded_by :latitude, :longitude
  has_many :orders

  def self.in_city(city, government)
    where("lower(city) = #{city.downcase} AND lower(government) = #{government.downcase}")
  end

  def self.in_government(government)
    where('lower(government) = ?', government.downcase.strip)
  end

  def pending_orders
    orders.where(status: 'pending')
  end
end
