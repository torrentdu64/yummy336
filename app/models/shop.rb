class Shop < ApplicationRecord
  mount_uploader :photo_one, PhotoUploader
  belongs_to :user

  has_many :girls
  has_many :hours

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
