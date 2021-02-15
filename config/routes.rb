Rails.application.routes.draw do
  resources :categories
  root "app#index"
  get "/cats", to:"app#cats"
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :medications
  resources :carts
end
