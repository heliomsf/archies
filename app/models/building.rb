class Building < ApplicationRecord
  has_many :reviews
  mount_uploader :image, ImageUploader

  def update_average_rating
    self.average_rating = reviews.average(:rating).round(2)
    save
  end
end
