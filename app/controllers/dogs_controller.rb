class DogsController < ApplicationController

    skip_before_action :authorized, only: [:index]
    
    def index
      dogs = Dog.all
      render json: dogs
    end

end
