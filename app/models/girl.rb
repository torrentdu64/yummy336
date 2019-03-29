class Girl < ApplicationRecord
  mount_uploader :photo_one, PhotoUploader
  mount_uploader :photo_two, PhotoUploader
  mount_uploader :photo_three, PhotoUploader
  mount_uploader :photo_four, PhotoUploader
  mount_uploader :photo_five, PhotoUploader
  mount_uploader :photo_six, PhotoUploader
  mount_uploader :photo_seven, PhotoUploader
  mount_uploader :photo_eight, PhotoUploader
  mount_uploader :photo_nine, PhotoUploader
  mount_uploader :photo_ten, PhotoUploader



  belongs_to :shop

  has_many :advertises

  translates :name, :description, :age, :origin, :service, :size, :height, :weight, :bust, :hair

  extend FriendlyId
  friendly_id :slug, use: :slugged

end





