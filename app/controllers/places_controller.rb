class PlacesController < ApplicationController
    def index
        @places = Place.all
    end

    def new
        @place = Place.new
    end

    def show
        @place = Place.find(params["id"])
    end

    def create
        values = params["place"]
        @place = Place.new(values)
        @place.save
        redirect_to "/places"
    end
    
end
