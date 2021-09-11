Rails.application.routes.draw do
  resources :cosm_meds
  resources :cosm_cats
  resources :orders
  resources :categories
  root "app#index"
  get "/cats", to:"app#cats"
  get "/prescription", to:"app#prescription"
  post "/n_prescription", to:"app#n_prescription"

  get "/checkout", to:"app#checkout"
  post "/new_order", to:"app#new_order"
  get "/sales", to:"orders#sellings"
  post "/sold/:id", to:"orders#sell"
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :medications
  resources :cart_items
  get "/cosm_cats/cat/:name", to: "cosm_cats#cats"

  get "/search", to:"search#index"
  post "/search", to:"search#index"


  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: { registrations: 'api/v1/registrations' }
      resources :categories, only: [:index, :show]
      resources :medications, only: [:show]
      resources :cosmetics_categories, only: [:index, :show]
      resources :cosmetics, only: [:show]
      resources :cart_items, only: [:index, :create, :update, :destroy]
      resources :order_items, only: [:index]
      resources :orders, only: [:index, :show, :create]
    end
  end
end
