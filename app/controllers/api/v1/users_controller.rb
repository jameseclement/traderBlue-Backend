class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update]
  def index
    @users = User.all
    render json: @notes
  end
end
