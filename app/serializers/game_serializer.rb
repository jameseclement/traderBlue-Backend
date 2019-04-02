class GameSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :starting_cash, :number_of_players
  has_many :portfolios
  has_many :users



end
