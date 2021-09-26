Rails.application.routes.draw do
  devise_for :pharmacies
  mount ActionCable.server => '/cable'
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
      devise_for :users, controllers: { registrations: 'api/v1/registrations' }
      resources :categories, only: %i[index show]
      resources :medications, only: %i[show]
      resources :cosmetics_categories, only: %i[index show]
      resources :cosmetics, only: %i[show]
      resources :cart_items, only: %i[index show create update destroy]
      resources :order_items, only: %i[index]
      resources :orders, only: %i[index show create]
      resources :search, only: %i[index]
      resources :addresses, only: %i[index create destory]
      resources :pharmacy_sessions, only: %i[create]
      resources :pharmacy_orders, only: %i[index]
      resources :pharmacy_finished_orders, only: %i[index create]
      resources :pharmacy_not_found_orders, only: %i[create]
      resources :pharmacy_fake_orders, only: %i[create]
    end
  end
end

# <Thread:0x00007f30e46412b8 /app/vendor/bundle/ruby/2.7.0/gems/actioncable-6.1.4.1/lib/action_cable/subscription_adapter/redis.rb:150 run> terminated with exception (report_on_exception is true):
# 2021-09-22T09:04:08.603616+00:00 app[web.1]: /app/vendor/bundle/ruby/2.7.0/gems/redis-4.4.0/lib/redis/client.rb:384:in `rescue in establish_connection': Error connecting to Redis on localhost:6379 (Errno::ECONNREFUSED) (Redis::CannotConnectError)
