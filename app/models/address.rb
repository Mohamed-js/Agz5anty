class Address < ApplicationRecord
    belongs_to :user
    has_many :orders, through: :user
end
