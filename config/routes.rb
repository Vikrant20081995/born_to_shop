Rails.application.routes.draw do

  get 'sessions/new'

  get 'orders/index'

  get 'categories/index'

  get 'products/index'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#create', as: 'login'
  
  resources :users 
  resources :sessions
  resources :orders
  resources :products
  resources :categories
end