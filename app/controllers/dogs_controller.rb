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

    def update
      # dog = Dog.find_by(name: dog_params[:dog][:name, user_id: dog_params[:dog][:user_id]])
      dog = Dog.find(dog_params[:id])
      dog.update(dog_params)
      render json: { user: UserSerializer.new(current_user) }

      # user = User.find_by(id: params[:id])
      # user.update(email: user_params[:email], username: user_params[:username], password: user_params[:password])
      # render json: user
    end

    private

    def dog_params
      params.require(:dog).permit(:name, :weight, :breed, :age, :user_id, :id)
    end 

end
