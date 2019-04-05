class ChangeCashToBeFloatInPortfolios < ActiveRecord::Migration[5.2]
  def change
    change_column :portfolios, :cash, 'float USING CAST(cash AS float)'

  end
end
