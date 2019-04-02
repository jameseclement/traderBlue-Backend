class PortfolioSerializer < ActiveModel::Serializer
  attributes :id, :name, :cash, :user_id, :game_id
  belongs_to :user
  belongs_to :game
  has_many :positions
  has_many :watchlist_items
end
