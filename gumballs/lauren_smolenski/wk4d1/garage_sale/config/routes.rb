Rails.application.routes.draw do

  get 'categories/index'

  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'

  root to: 'products#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  resources :products #:except => [:destroy]
  resources :categories
  resources :users

end
