Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :update, :show] do
          resources :portfolios, only: [:index, :update, :show] do
            resources :positions, only: [:index, :show, :create, :update]
          end
        end
        get "users/:id/portfolios/:id/info", to: "portfolios#info"
        get "positions", to: "positions#index"
        get "users/:user_id/portfolios/:portfolio_id/positions/:ticker", to: "positions#show"
        post "positions", to: "positions#create"
        patch "users/:user_id/portfolios/:portfolio_id/positions/:ticker", to: "positions#update"
        delete "users/:user_id/portfolios/:portfolio_id/positions/:ticker", to: "positions#destroy"
        resources :games, only: [:index, :update]
        resources :watchlist_items, only: [:index, :create]
        get "stocks/:ticker", to: "stocks#info"
      end
    end
  end
