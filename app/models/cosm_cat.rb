class CosmCat < ApplicationRecord
  include ImageUploader::Attachment(:image)
  has_many :cosm_meds
end
