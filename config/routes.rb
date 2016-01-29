Rails.application.routes.draw do
  root 'products#index'
  get '/all_products', to: 'homes#index'

  resources :products, except: :destroy
  resources :collections, except: :destroy
  resources :hide_product, only: [:update]
end
