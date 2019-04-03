Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :update, :show] do
          resources :portfolios, only: [:index, :update, :show] do
            resources :positions, only: [:index, :update, :show]
          end
        end
        get "users/:id/portfolios/:id/info", to: "portfolios#info"

        resources :games, only: [:index, :update]
        resources :watchlist_items, only: [:index, :update]
        resources :stocks, only: [:index, :update]
      end
    end
  end
