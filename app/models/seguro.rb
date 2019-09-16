class Seguro < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_one :seguroscontact

  mount_uploader :image, ImageUploader

  def self.search(search)
    where(['name LIKE ?', "%#{search}%"])

end

end
