class Api::V1::WatchlistItemsController < ApplicationController



    def index
      @watchlist_items = WatchlistItem.all
      render json: @watchlist_items
    end

    def create
      
        @watchlist_item = WatchlistItem.create!(watchlist_item_params)
        render json: @watchlist_item, status: :accepted
    end

    private
    def watchlist_item_params
      params.require(:watchlist_item).permit(:ticker, :name, :cap_level, :industry, :portfolio_id)
    end
end
