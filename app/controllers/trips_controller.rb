class TripsController < ApplicationController
    require 'date'

    skip_before_action :authorized

    def index
        trips = Trip.all
        render json: trips
    end

    def index2
        trips = Trip.all
        render json: trips
    end

end
