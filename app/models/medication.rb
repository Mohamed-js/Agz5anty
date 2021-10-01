class Medication < ApplicationRecord
  require 'csv'
  include ImageUploader::Attachment(:image)
  belongs_to :category

  
  def self.import
    file = File.join(Rails.root, 'public', 'ups', 'drugs.csv')
    CSV.foreach(file, headers: true) do |row|
      @med = Medication.new row.to_hash
      @med.category_id = 16 if !@med.category_id || @med.category_id == '-'
      @med.save
      @med.valid?
    end
  end
end
