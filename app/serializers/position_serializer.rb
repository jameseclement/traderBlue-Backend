require 'rest-client'
require 'json'


class PositionSerializer < ActiveModel::Serializer

attributes :id, :quantity, :ticker, :open_date, :close_date, :cost_basis, :info
 belongs_to :portfolio
 
# belongs_to :stock

def info

  url = "https://api.iextrading.com/1.0/stock/#{object.ticker}/batch?types=quote,news"
  response = RestClient.get(url)
  return JSON.parse(response)
end


end
