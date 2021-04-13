class Order < ApplicationRecord
    include ImageUploader::Attachment(:image)
    belongs_to :user, class_name: "User", foreign_key: "user_id"
end
