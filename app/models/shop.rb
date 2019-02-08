class Shop < ApplicationRecord
  belongs_to :hour
  belongs_to :girl
  belongs_to :user
end
