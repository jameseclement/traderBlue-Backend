Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :update]
        resources :games, only: [:index, :update]
        resources :portfolios, only: [:index, :update]
        resources :positions, only: [:index, :update]
        resources :watchlist_items, only: [:index, :update]
        resources :stocks, only: [:index, :update]
      end
    end
  end
