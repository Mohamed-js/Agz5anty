class CosmCat < ApplicationRecord
  include ImageUploader::Attachment(:image)
  has_many :cosm_meds, class_name: 'CosmMed', foreign_key: 'cosm_cat_id'
end
