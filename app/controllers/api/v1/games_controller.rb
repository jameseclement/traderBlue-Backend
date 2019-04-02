class Api::V1::GamesController < ApplicationController
  before_action :find_game, only: [:update]

  def index
    @games = Game.all
    render json: @games
  end

  def update(game_params)
    if @game.save
      render json: @game, status: :accepted
    else
      render json: {errors: @game.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def game_params
    params.require(:game).permit(:name, :start_date, :end_date, :starting_cash, :number_of_players)
  end

  def find_game
    @game = Game.find(params[:id])
  end



end
