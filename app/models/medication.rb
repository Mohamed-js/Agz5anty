class Medication < ApplicationRecord
  require 'csv'
  include ImageUploader::Attachment(:image)
  belongs_to :category
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Medication.create! row.to_hash
    end
  end
end
