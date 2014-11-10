Rails.application.routes.draw do

  # get 'categories/index'

  # get 'categories/new'

  # get 'categories/create'

  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'

  # resources :products, :only => [:index, :new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

get '/sign_up' => 'users#new'
get '/sign_up' => 'users#create'

    root to: 'products#index'
    resources :products #:except => [:destroy]
    resources :categories
    resources :users

end
