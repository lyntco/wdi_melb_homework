Rails.application.routes.draw do


  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # get '/products' => 'products#create'

  root 'products#index' #helper method for root

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  resources :products #, :except => [:destroy]
  resources :categories
  resources :users
end
