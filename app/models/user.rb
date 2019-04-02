class User < ApplicationRecord
  has_many :portfolios
  has_many :games, through: :portfolios
  has_many :positions, through: :portfolios
end
