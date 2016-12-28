Rails.application.routes.draw do
  root 'homes#welcome'
  get '/about', to: 'homes#about'
  get '/stockists', to: 'homes#stockists'
  get '/dashboard', to: 'homes#dashboard'

  get '/kitty_candles_login', to: 'homes#login'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/collections-coming-soon', to: 'homes#placeholdcollection'

  get '/events_dashboard', to: 'events#dashboard'
  get '/products_dashboard', to: 'products#dashboard'
  get '/collections_dashboard', to: 'collections#dashboard'


  resources :products, except: [:index]
  resources :collections
  resources :hide_product, only: [:update]
  resources :events, except: [:delete]
end
