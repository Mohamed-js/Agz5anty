class Medication < ApplicationRecord
    include ImageUploader::Attachment(:image)
    belongs_to :category
    has_many :cart_items, foreign_key: 'item_id'
end
