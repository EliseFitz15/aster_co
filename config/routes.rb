Rails.application.routes.draw do
  root 'homes#welcome'
  get '/about', to: 'homes#about'
  get '/kitty_candles_login', to: 'homes#login'
  get '/collections-coming-soon', to: 'homes#placeholdcollection'
  get '/events-coming-soon', to: 'homes#placeholdevents'
  get '/events_dashboard', to: 'events#dashboard'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :products
  resources :collections
  resources :hide_product, only: [:update]
  resources :events, only: [:index, :new, :show, :create, :edit, :update]
end
