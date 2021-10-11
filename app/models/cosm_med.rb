class CosmMed < ApplicationRecord
  include ImageUploader::Attachment(:image)
  belongs_to :cosm_cat

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :category, presence: true
  validates :sub_category, presence: true
  validates :price, presence: true
  validates :img, presence: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      r = row.to_hash
      med = CosmMed.new name: r['name'], price: r['price'], img: r['img'], category: r['category'], sub_category: r['sub_category']
      if med.category && med.sub_category
        cat = CosmCat.find_by('lower(name) = ?', med.sub_category.downcase)
        if cat
          med.cosm_cat_id = cat.id
        else
          cat = CosmCat.create(name: med.sub_category, parent: med.category)
          med.cosm_cat_id = cat.id
        end
      end
      med.availability = "true"
      med.save
    end
  end
end
