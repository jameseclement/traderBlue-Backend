class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name
  has_many :portfolios
  # has_many :games
  # has_many :positions
  has_many :watchlist_items
end
