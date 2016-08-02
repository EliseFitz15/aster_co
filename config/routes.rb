Rails.application.routes.draw do
  root 'homes#welcome'
  get '/about', to: 'homes#about'
  get '/dashboard', to: 'homes#dashboard'
  
  get '/kitty_candles_login', to: 'homes#login'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/collections-coming-soon', to: 'homes#placeholdcollection'

  get '/events_dashboard', to: 'events#dashboard'
  get '/products_dashboard', to: 'products#dashboard'
  get '/events_dashboard', to: 'events#dashboard'


  resources :products
  resources :collections
  resources :hide_product, only: [:update]
  resources :events, only: [:index, :new, :show, :create, :edit, :update]
end
