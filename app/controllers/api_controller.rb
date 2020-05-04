class ApiController < ApplicationController

    def placeAutoComplete
        render json: Api.placeAutoComplete(params[:term])
    end

    def placeDetails
        render json: Api.placeDetails(params[:id])
    end

    def placePhotos
        render json: Api.placePhotos(params[:ref])
    end
end
