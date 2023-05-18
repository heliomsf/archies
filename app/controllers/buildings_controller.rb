class BuildingsController < ApplicationController
    # action to retrieve all buildings from the database and render them in a view
    def index
        @buildings = Building.all
    end

    # action to retrieve a single building from the database and render it in a view
    def show
        @building = Building.find(params[:id])
    end
end
