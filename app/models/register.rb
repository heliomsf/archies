class Register < ApplicationRecord
  has_many :reviews
  validates :cdgpdf, presence: true
  validates :ref, presence: true
  
  mount_uploader :image, ImageUploader

end
