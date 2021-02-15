class Category < ApplicationRecord
    has_many :medications
    has_one_attached :image
end
