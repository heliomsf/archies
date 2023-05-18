class User < ApplicationRecord
  # Attributes: username, email, password
  has_many :reviews, dependent: :destroy
  has_many :buildings, dependent: :destroy

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
