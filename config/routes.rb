Rails.application.routes.draw do
  resources :cosm_meds
  resources :cosm_cats  
  resources :orders
  resources :categories
  root "app#index"
  get "/cats", to:"app#cats"
  post "/new_order", to:"app#new_order"
  get "/checkout", to:"app#checkout"
  get "/sales", to:"orders#sellings"
  post "/sold/:id", to:"orders#sell"
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :medications
  resources :carts
  get "/cosm_cats/cat/:name", to: "cosm_cats#cats"
  # post "/cosm_meds/:id", to: ""
end
