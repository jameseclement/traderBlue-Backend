require 'rest-client'
require 'json'


class Api::V1::PortfoliosController < ApplicationController
  before_action :find_portfolio, only: [:update, :show, :info]

  def show
    render json: @portfolio, status: :accepted
  end

  def info
    symbols = @portfolio.positions.map{|p| p.ticker}.join(",")
byebug
    url = "https://api.iextrading.com/1.0/stock/market/batch?symbols=#{symbols}&types=quote,news"
    response = RestClient.get(url)
    render json: JSON.parse(response)
  end

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
