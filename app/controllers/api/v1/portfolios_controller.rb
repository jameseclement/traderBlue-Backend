class Api::V1::PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [:update]

  def index
    @portfolios = Portfolio.all
    render json: @portfolios
  end

  def update(portfolio_params)
    if @portfolio.save
      render json: @portfolio, status: :accepted
    else
      render json: {errors: @portfolio.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  def portfolio_params
    params.require(:portfolio).permit(:name, :cash)
  end

  def find_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

end
