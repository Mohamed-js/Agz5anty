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
  resources :carts
  get "/cosm_cats/cat/:name", to: "cosm_cats#cats"

  get "/search", to:"search#index"
  post "/search", to:"search#index"
end
