class Review < ApplicationRecord
  belongs_to :suplier
  has_many_attached :photos
end
