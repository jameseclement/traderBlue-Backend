class WatchlistItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :ticker, :cap_level, :industry
  belongs_to :portfolio
  # belongs_to :stock
end
