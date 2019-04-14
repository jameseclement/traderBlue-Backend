class Api::V1::WatchlistItemsController < ApplicationController



    def index
      @watchlist_items = WatchlistItem.where(user_id: params[:user_id])
      render json: @watchlist_items
    end

    def create
        @watchlist_item = WatchlistItem.create!(watchlist_item_params)
        render json: @watchlist_item, status: :accepted
    end

    def destroy
      @watchlist_item = WatchlistItem.find_by(user_id: params[:user_id], ticker: (params[:ticker]).upcase)
      @watchlist_item.destroy()
      render json: @watchlist_item
    end


    private
    def watchlist_item_params
      params.require(:watchlist_item).permit(:ticker, :name, :cap_level, :industry, :portfolio_id, :user_id)
    end
end
