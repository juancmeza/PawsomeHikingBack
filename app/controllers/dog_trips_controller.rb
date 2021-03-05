class DogTripsController < ApplicationController
    skip_before_action :authorized

    def create
      dog_trip = DogTrip.create(dog_trip_params)
      render json: dog_trip
    end

    private

    def dog_trip_params
      params.require(:dog_trip).permit(:dog_id, :trip_id)
    end    
end
