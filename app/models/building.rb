class Building < ApplicationRecord
  # Attributes: name, address, neighborhood, city, country, latitude, longitude

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :neighborhood, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true
end
