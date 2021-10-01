class Medication < ApplicationRecord
  require 'csv'
  include ImageUploader::Attachment(:image)
  belongs_to :category

  
  def self.import
    file = File.join(Rails.root, 'app', 'assets', 'drugs.csv')
    CSV.foreach(file, headers: true) do |row|
      @med = Medication.new row.to_hash
      @med.save
    end
  end
end
