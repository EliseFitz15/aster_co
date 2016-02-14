Rails.application.routes.draw do
  root 'products#index'
  get '/all_products', to: 'homes#index'
  get '/contact_info', to: 'homes#contact'
  get '/about', to: 'homes#about'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :products, except: :destroy
  resources :collections, except: :destroy
  resources :hide_product, only: [:update]
end
