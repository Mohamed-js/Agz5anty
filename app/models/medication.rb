require 'csv'

class Medication < ApplicationRecord
  include ImageUploader::Attachment(:image)

  belongs_to :category
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :ar_name, presence: true, uniqueness: { case_sensitive: false }
  validates :price, presence: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      med = Medication.new row.to_hash
      if med.category_name
        cat = Category.find_by('lower(name) = ?', med.category_name.downcase)
        if cat 
          med.category_id = cat.id
        else
          cat = Category.create(name: med.category_name)
          med.category_id = cat.id
        end
      end
      med.availability = "true"
      med.save
    end
  end
end
