class Review < ApplicationRecord
  # Attributes: content, rating, building_id, user_id
  belongs_to :building
  belongs_to :user

  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
