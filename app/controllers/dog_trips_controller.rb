class DogTripsController < ApplicationController
    skip_before_action :authorized

    def create
      params[:dogs].each do |dog|
        DogTrip.create(dog_id: dog[:id], trip_id: params[:trip_id])
      end
    render json: { user: UserSerializer.new(current_user) }
    end

    # private

    # def dog_trip_params
    #   params.require(:dog_trip).permit(:dog_id, :trip_id)
    # end    
end
