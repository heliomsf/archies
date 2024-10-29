class Review < ApplicationRecord
  belongs_to :register
  
  ratyrate_rateable 'quality'

  after_save :update_register_average_rating
  after_destroy :update_register_average_rating

  def update_register_average_rating
    register.update_average_rating
  end
end
