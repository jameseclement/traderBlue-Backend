class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :accepted
  end

  def update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: {errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password_digest, :email, :first_name, :last_name)
  end

  def find_user
    @user = User.find(params[:id])
  end



end
