class Category < ApplicationRecord
    include ImageUploader::Attachment(:image)
    has_many :medications
end
