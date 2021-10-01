class Medication < ApplicationRecord
  require 'csv'
  include ImageUploader::Attachment(:image)
  belongs_to :category

  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      @med = Medication.new row.to_hash
      @med.category_id = 16 if !@med.category_id || @med.category_id == '-'
      @med.save
    end
  end
end
