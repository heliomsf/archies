class Review < ApplicationRecord
  belongs_to :building
  
  ratyrate_rateable 'quality'

  after_save :update_building_average_rating
  after_destroy :update_building_average_rating

  def update_building_average_rating
    building.update_average_rating
  end
end
