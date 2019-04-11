require 'rest-client'
require 'json'

class Api::V1::PositionsController < ApplicationController
   before_action :find_position, only: [ :show]

  def create
    @position = Position.create!(position_params)
    render json: @position, status: :accepted
  end

  def show

    render json: @position, status: :accepted
  end

  def index
    @positions = Position.all
    render json: @positions
  end

  def destroy

    @position = Position.find_by_ticker(params[:ticker])

    @position.destroy()
    render json: @position
  end


  def update
    @position = Position.find_by(ticker: (params[:id]).upcase, portfolio_id: params[:portfolio_id])
     @position.update!(position_params)

    if @position.save
      render json: @position, status: :accepted
    else
      render json: {errors: @position.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def position_params
    params.require(:position).permit(:quantity, :ticker, :open_date, :close_date, :cost_basis, :portfolio_id)
  end

  def find_position

    @position = Position.find_by(ticker: (params[:id]).upcase, portfolio_id: params[:portfolio_id])

  end



end
