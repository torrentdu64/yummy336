class Shop < ApplicationRecord
  mount_uploader :photo_one, PhotoUploader
  belongs_to :user

  has_many :girls
  has_many :hours

end
