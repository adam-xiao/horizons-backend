class ItinerariesController < ApplicationController

    def index
        render json: Itinerary.all
    end

    def selfActivity
        myItin = Itinerary.all.filter{|itin| itin.user_id == decoded_token}
        activities = myItin.map{ |itin| itin.activities }

        activities.flatten!
        
        render json: activities
    end
    
    def create
        itinerary = Itinerary.new(itinerary_params)
        itinerary.save

        redirect_to itinerary_path
    end

    def update
        itinerary = Itinerary.find(params[:id])
        itinerary.update(itinerary_params)
    end
    
    def destroy
        itinerary = Itinerary.find(params[:id])
        itinerary.destroy
    end

    private

    def itinerary_params
        params.require(:itinerary).permit(:user_id, :name, :description, :start, :end, :archived)
    end

end
