Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :pharmacies
  resources :cosm_meds
  resources :cosm_cats
  resources :orders
  resources :categories
  root 'app#index'
  get '/cats', to: 'app#cats'
  get '/prescription', to: 'app#prescription'
  post '/n_prescription', to: 'app#n_prescription'

  get '/checkout', to: 'app#checkout'
  post '/new_order', to: 'app#new_order'
  get '/sales', to: 'orders#sellings'
  post '/sold/:id', to: 'orders#sell'
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :medications
  resources :cart_items
  get '/cosm_cats/cat/:name', to: 'cosm_cats#cats'

  get '/search', to: 'search#index'
  post '/search', to: 'search#index'

  namespace :api do
    namespace :v1 do
      # Specific to user
      devise_for :users, controllers: { registrations: 'api/v1/registrations' }
      resources :categories, only: %i[index show]
      resources :medications, only: %i[show]
      resources :cosmetics_categories, only: %i[index show]
      resources :cosmetics, only: %i[show]
      resources :cart_items, only: %i[index show create update destroy]
      resources :order_items, only: %i[index]
      resources :orders, only: %i[index create]
      resources :search, only: %i[index]
      resources :addresses, only: %i[index create destory]
      resources :pharmacy_sessions, only: %i[create]

      # Specific to pharmacies => get orders and classify them
      resources :pharmacy_pending_orders, only: %i[index]
      resources :pharmacy_finished_orders, only: %i[index create]
      resources :pharmacy_not_found_orders, only: %i[create]
      resources :pharmacy_fake_orders, only: %i[create]

      # Specific to the owner => monitor all pharmacies work
      resources :pending_orders, only: %i[index]
      resources :finished_orders, only: %i[index]
      resources :fake_orders, only: %i[index]
      resources :not_found_orders, only: %i[index]
    end
  end
end
