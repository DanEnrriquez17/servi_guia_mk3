class Suplier < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_one_attached :avatar
end
