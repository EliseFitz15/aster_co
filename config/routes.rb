Rails.application.routes.draw do
  root 'products#index'
  resources :products, except: :destroy
  resources :collections, except: :destroy
end
