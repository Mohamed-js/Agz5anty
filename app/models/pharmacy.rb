class Pharmacy < ApplicationRecord
    reverse_geocoded_by :latitude, :longitude
    has_many :orders

    def self.in_government(government)
        where("lower(address) ILIKE '#{government}%'")
    end

    def pending_orders
        orders.where(status: "pending")
    end
end
