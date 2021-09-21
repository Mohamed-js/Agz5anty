class Medication < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :category
end
