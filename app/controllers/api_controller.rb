class ApiController < ApplicationController

    def placeAutoComplete
        render json: Api.placeAutoComplete(params[:term])
    end

end
