class Shop < ApplicationRecord
  belongs_to :user

  has_many :girls
  has_many :hours

end
