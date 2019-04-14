class User < ApplicationRecord
  has_many :portfolios
  has_many :games, through: :portfolios
  has_many :positions, through: :portfolios
  has_many :watchlist_items, through: :portfolios
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end
