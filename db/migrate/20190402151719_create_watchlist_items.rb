class CreateWatchlistItems < ActiveRecord::Migration[5.2]
  def change
    create_table :watchlist_items do |t|
      t.string :name
      t.string :ticker
      t.string :cap_level
      t.string :industry
      t.belongs_to :portfolio, foreign_key: true
      t.belongs_to :stock, foreign_key: true

      t.timestamps
    end
  end
end
