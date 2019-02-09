class Girl < ApplicationRecord
  belongs_to :shop

  has_many :advertises
end
