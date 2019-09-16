class Seguro < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged


  has_one :seguroscontact

  mount_uploader :image, ImageUploader

  def self.search(search)
    where(['name LIKE ?', "%#{search}%"])

end

def should_generate_new_friendly_id?
  new_record? || slug.blank?
end

end
