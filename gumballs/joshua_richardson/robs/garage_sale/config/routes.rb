Rails.application.routes.draw do

  # get '/products' => 'products#index'
  # get '/products/new' => 'products#new'
  # post '/products' => 'products#create'

  root 'products#index' # this gives me the helper method root_path (i.e. get '/')

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  resources :products, :categories, :users # , :except => [destroy]
  # resources :categories
  # resources :users

end
