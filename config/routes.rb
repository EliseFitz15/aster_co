Rails.application.routes.draw do
  root 'products#index'
  get '/all_products', to: 'homes#index'
  get '/events', to: 'homes#events'
  get '/about', to: 'homes#about'
  get '/kitty_candles_login', to: 'homes#login'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :products, except: :destroy
  resources :collections, except: :destroy
  resources :hide_product, only: [:update]
end
