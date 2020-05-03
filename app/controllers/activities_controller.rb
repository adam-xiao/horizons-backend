class ActivitiesController < ApplicationController

    def index
        render json: Activity.all
    end

    def create
        activity = Activity.new(activity_params)
        activity.save

        redirect_to activity_path
    end    

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
    end

    private

    def activity_params
        params.require(:activity).permit(:itinerary_id, :name, :address, :rating, :description)
    end


end
