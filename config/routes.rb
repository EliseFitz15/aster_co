Rails.application.routes.draw do
  root 'homes#welcome'
  get '/all_products', to: 'homes#index'
  get '/about', to: 'homes#about'
  get '/kitty_candles_login', to: 'homes#login'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :products
  resources :collections
  resources :hide_product, only: [:update]
  resources :events, only: [:index, :new, :create]
end
