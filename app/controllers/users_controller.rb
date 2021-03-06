class UsersController < ApplicationController

  skip_before_action :authorized#, only: [:create]

  def index
    users = User.all
    render json: users
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  # def user_trips()
  #   User.show_trips()
  # end

  def show
    user = User.find_by(id: params[:id])
    render json: user
end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), token: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :phone_number, :password)
  end
end
