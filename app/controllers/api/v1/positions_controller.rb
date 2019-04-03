require 'rest-client'
require 'json'

class Api::V1::PositionsController < ApplicationController
  before_action :find_position, only: [:update, :show]

  def show
    render json: @position, status: :accepted
  end

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
