require 'rest-client'
require 'json'


class PositionSerializer < ActiveModel::Serializer

attributes :id, :quantity, :ticker, :cost_basis, :info, :value, :cost
 belongs_to :portfolio

# belongs_to :stock

def info

  url = "https://api.iextrading.com/1.0/stock/#{object.ticker}/batch?types=quote,news"
  response = RestClient.get(url)
  return JSON.parse(response)
end

def value
  url = "https://api.iextrading.com/1.0/stock/#{object.ticker}/batch?types=quote,news"
  response = RestClient.get(url)
  price = JSON.parse(response)["quote"]["latestPrice"]
  quantity = object.quantity
  return (price * quantity)
end

def cost
  object.cost_basis * object.quantity
end

end
