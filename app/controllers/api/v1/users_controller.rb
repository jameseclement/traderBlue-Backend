class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]
  # skip_before_action :authorized, only: [:create]

  def index
    @users = User.all
    render json: @users
  end

  def show
    token = request.headers["Authentication"].split(' ')[1]
    payload = decode(token)
    @user = User.find(payload["user_id"])
    if @user
      render json: @user
    end
    # @user = User.find(params[:id])
    # render json: @user, status: :accepted
  end


    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end



  private
  def user_params
    params.require(:user).permit(:username, :password, :email, :first_name, :last_name)
  end

  def find_user
    @user = User.find(params[:id])
  end



end
