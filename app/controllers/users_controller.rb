class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
          render json: { user: UserSerializer.new(@user) }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
      
        user = User.find_by(id: params[:id])
        user.update(email: user_params[:email], username: user_params[:username], password: user_params[:password])
        render json: user
    end

    def destroy
      user = User.find_by(id: params[:id])
      user.destroy

    end

    def login
      user = User.find_by(username: user_params[:username], password: user_params[:password])
      render json: user
    end

    private

    def user_params
        params.require(:user).permit(:first_name, last_name, :email, :phone_number)
    end
end
