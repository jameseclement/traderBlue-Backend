class Portfolio < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :positions
  has_many :watchlist_items
end
