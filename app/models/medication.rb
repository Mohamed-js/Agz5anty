class Medication < ApplicationRecord
  require 'csv'
  include ImageUploader::Attachment(:image)
  belongs_to :category
  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      @med = Medication.new row.to_hash
      # if @med.image_data
      #   @med.img = JSON.parse(@med.image_data)['id']
      # end
      @med.category_id = 16 if !@med.category_id || @med.category_id == '-'
      @med.save
    end
  end
end
