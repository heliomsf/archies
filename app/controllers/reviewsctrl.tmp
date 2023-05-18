class ReviewsController < ApplicationController
    def create
      @building = Building.find(params[:building_id])
      @review = @building.reviews.create(review_params)
      redirect_to building_path(@building)
    end
    
    private
    
    def review_params
      params.require(:review).permit(:content, :rating, :user_id)
    end
end
