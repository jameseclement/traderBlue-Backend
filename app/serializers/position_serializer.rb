class PositionSerializer < ActiveModel::Serializer

attributes :id, :quantity, :ticker, :open_date, :close_date, :cost_basis
belongs_to :portfolio
belongs_to :stock

end
