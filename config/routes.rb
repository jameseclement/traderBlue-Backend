Rails.application.routes.draw do
  get 'watchist_item/api/v1/watchlistItem'
  namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :update]
        resources :games, only: [:index, :update]
        resources :portfolios, only: [:index, :update]
        resources :positions, only: [:index, :update]
        resources :watchistItems, only: [:index, :update]
        resources :stocks, only: [:index, :update]
      end
    end
  end
