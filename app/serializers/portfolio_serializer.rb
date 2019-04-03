class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :cash, :user_id, :game_id
  # :info
  belongs_to :user
  belongs_to :game
  has_many :positions
  has_many :watchlist_items

  # def info
  #
  #   symbols = object.positions.map{|p| p.ticker}.join(",")
  #
  #   url = "https://api.iextrading.com/1.0/stock/market/batch?symbols=#{symbols}&types=quote,news"
  #   response = RestClient.get(url)
  #   return JSON.parse(response)
  # end
  #

end
