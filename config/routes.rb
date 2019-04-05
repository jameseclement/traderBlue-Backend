Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :update, :show] do
          resources :portfolios, only: [:index, :update, :show] do
            resources :positions, only: [:index, :update, :show, :create]
          end
        end
        get "users/:id/portfolios/:id/info", to: "portfolios#info"
        get "positions", to: "positions#index"
        get "users/:id/portfolios/:id/positions/:ticker", to: "positions#show"
        post "positions", to: "positions#create"
        resources :games, only: [:index, :update]
        resources :watchlist_items, only: [:index, :update]
        get "stocks/:ticker", to: "stocks#info"
      end
    end
  end
