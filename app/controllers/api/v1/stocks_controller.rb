require 'rest-client'
require 'json'

class Api::V1::StocksController < ApplicationController


  def info

    url = "https://api.iextrading.com/1.0/stock/#{params[:ticker]}/batch?types=quote,news"
    response = RestClient.get(url)

    render json: JSON.parse(response)

  end


  private

  def stock_params
    params.permit(:ticker, :name, :cap_level, :industry)
  end

  def find_stock
    @stock = Stock.find(params[:id])
  end

end
