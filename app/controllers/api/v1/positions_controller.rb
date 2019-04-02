class Api::V1::PositionsController < ApplicationController
  before_action :find_position, only: [:update]

  def index
    @positions = Position.all
    render json: @positions
  end

  def update(position_params)
    if @position.save
      render json: @position, status: :accepted
    else
      render json: {errors: @position.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def position_params
    params.require(:position).permit(:quantity, :ticker, :open_date, :close_date, :cost_basis)
  end

  def find_position
    @position = Position.find(params[:id])
  end



end
