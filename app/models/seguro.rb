class Seguro < ApplicationRecord

  mount_uploader :image, ImageUploader

  def self.search(search)
    where(['name LIKE ?', "%#{search}%"])

end

end
