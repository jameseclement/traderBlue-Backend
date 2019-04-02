class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :quantity
      t.belongs_to :portfolio, foreign_key: true
      t.belongs_to :stock, foreign_key: true
      t.string :ticker
      t.datetime :open_date
      t.datetime :close_date
      t.float :cost_basis

      t.timestamps
    end
  end
end
