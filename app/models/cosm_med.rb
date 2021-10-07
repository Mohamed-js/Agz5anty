class CosmMed < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :cosm_cat, class_name: 'CosmCat', foreign_key: 'cosm_cat_id'

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :description, presence: true
  validates :category, presence: true
  validates :sub_category, presence: true
  validates :price, presence: true
  validates :img, presence: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      @cosm = CosmMed.new row.to_hash
      @cosm.availability = 'true'

      if @cosm.cosm_cat_id
        @cosm.save
      end
    end
  end
end
