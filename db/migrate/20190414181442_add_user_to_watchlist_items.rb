class AddUserToWatchlistItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :watchlist_items, :user, foreign_key: true
  end
end
