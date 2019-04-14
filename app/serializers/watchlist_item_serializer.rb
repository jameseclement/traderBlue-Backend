class WatchlistItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :ticker, :cap_level, :industry, :news
  # belongs_to :portfolio
  belongs_to :user
  # belongs_to :stock

def news
  url = "https://api.iextrading.com/1.0/stock/#{self.object.ticker}/news/last/5"
  response = RestClient.get(url)

  return JSON.parse(response)
end
end
