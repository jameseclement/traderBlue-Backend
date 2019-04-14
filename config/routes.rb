Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :update, :show, :create] do

          resources :portfolios, only: [:index, :update, :show] do
            resources :positions, only: [:index, :show, :create, :update, :destroy]
          end
        end
        get '/profile', to: 'users#profile'
        post '/login', to: 'auth#create'
    
        get "users/:id/portfolios/:id/info", to: "portfolios#info"
        get "positions", to: "positions#index"
        get "users/:user_id/portfolios/:portfolio_id/positions/:ticker", to: "positions#show"
        post "users/:user_id/portfolios/portfolio_id/positions", to: "positions#create"
        patch "users/:user_id/portfolios/:portfolio_id/positions/:ticker", to: "positions#update"
        delete "users/:user_id/portfolios/:portfolio_id/positions/:ticker", to: "positions#destroy"
        resources :games, only: [:index, :update]
        resources :watchlist_items, only: [:index, :create]
        get "stocks/:ticker", to: "stocks#info"
      end
    end
  end
