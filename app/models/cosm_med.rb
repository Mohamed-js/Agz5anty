class CosmMed < ApplicationRecord
    include ImageUploader::Attachment(:image)
    belongs_to :cosm_cat, class_name: "CosmCat", foreign_key: "cosm_cat_id"
    has_many :cart_items, foreign_key: 'item_id'
end
