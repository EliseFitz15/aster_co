Rails.application.routes.draw do
  root 'products#index'
  get '/all_products', to: 'homes#index'
  get '/contact_info', to: 'homes#contact'
  get '/about', to: 'homes#about'

  resources :products, except: :destroy
  resources :collections, except: :destroy
  resources :hide_product, only: [:update]
end
