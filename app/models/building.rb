class Building < ApplicationRecord
  has_many :reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :neighborhood, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :image, presence: true
  validates :description, presence: true

  mount_uploader :image, ImageUploader

  def update_average_rating
    self.average_rating = reviews.average(:rating).round(2)
    save
  end
end
