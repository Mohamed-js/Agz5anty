class CosmMed < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :cosm_cat, class_name: 'CosmCat', foreign_key: 'cosm_cat_id'

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      @cosm = CosmMed.new row.to_hash
      if @cosm.image_data   
        @cosm.img = JSON.parse(@cosm.image_data)['id']
      end

      if @cosm.cosm_cat_id
        @cosm.save
      end
    end
  end
end
