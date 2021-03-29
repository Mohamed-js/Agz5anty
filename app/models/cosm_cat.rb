class CosmCat < ApplicationRecord
    has_many :cosm_meds, class_name: "CosmMed", foreign_key: "cosm_cat_id"
    has_one_attached :image
end
