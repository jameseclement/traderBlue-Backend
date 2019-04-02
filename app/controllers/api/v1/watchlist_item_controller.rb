class Api::V1::WatchlistItemController < ApplicationController

    before_action :find_watchlist_item, only: [:update]

    def index
      @watchlist_items = WatchlistItem.all
      render json: @watchlist_items
    end

    def update(watchlist_item_params)
      if @watchlist_item.save
        render json: @watchlist_item, status: :accepted
      else
        render json: {errors: @watchlist_item.errors.full_messages }, status: :unprocessable_entity
      end
    end

    private
    def watchlist_item_params
      params.require(:watchlist_item).permit(:ticker, :name, :cap_level, :industry)
    end

    def find_watchlist_item
      @watchlist_item = WatchlistItem.find(params[:id])
    end




end
