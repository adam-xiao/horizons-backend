class ItinerariesController < ApplicationController

    def index
        render json: Itinerary.all
    end

    def selfActivity
        render json: Activity.all.filter{|activity| activity.itinerary_id == findActivity_params[:itinerary_id]}
    end
    # activity: findActivity_params[:itinerary_id]
    def create
        itinerary = Itinerary.new(itinerary_params)
        itinerary.save

        redirect_to itinerary_path
    end    

    private

    def itinerary_params
        params.require(:itinerary).permit(:user_id, :name, :description, :start, :end)
    end

    def findActivity_params
        params.require(:activity).permit(:itinerary_id)
    end

end
