class StockSerializer < ActiveModel::Serializer
  attributes :id, :name, :ticker, :cap_level, :industry
  # has_many :positions
  has_many :watchlist_items


end
