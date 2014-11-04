Rails.application.routes.draw do

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  root 'products#index' # this gives me the helper method root path i.e. get the /

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  resources :products, :categories, :users

end
