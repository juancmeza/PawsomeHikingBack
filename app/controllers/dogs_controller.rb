class DogsController < ApplicationController

    skip_before_action :authorized, only: [:index]
    
    def index
      dogs = Dog.all
      render json: dogs
    end

    def create
      dog = Dog.create(dog_params)
      render json: { user: UserSerializer.new(current_user) }
    end

    private

    def dog_params
      params.require(:dog).permit(:name, :weight, :breed, :age, :user_id)
    end 

end
