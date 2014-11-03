Rails.application.routes.draw do

  # get 'categories/index'

  # get 'categories/new'

  # get 'categories/create'

# get '/products' => 'products#index'

# get '/products/new' => 'products#new'
# post '/products' => 'products#create'

# resources :products, :only =>[:index, :new, :create]

  root 'products#index' #this gives me the helper method root_path

  resources :products#, :except =>[:delete]
  resources :categories
  resources :users

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
