class CosmMed < ApplicationRecord
    belongs_to :cosm_cat, class_name: "CosmCat", foreign_key: "cosm_cat_id"
    has_one_attached :image
end
