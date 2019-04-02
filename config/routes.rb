Rails.application.routes.draw do
  get 'watchist_item/api/v1/watchlistItem'
  namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :update]
      end
    end
  end
