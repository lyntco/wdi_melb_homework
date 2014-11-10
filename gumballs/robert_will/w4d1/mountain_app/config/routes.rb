Rails.application.routes.draw do

  resources :mountains

  get'/' => 'mountains#index'

  get '/mountains' => 'mountains#index'
  get '/mountains/new' => 'mountains#new'
  get '/mountains/:id' => 'mountains#show'

  post '/mountains' => 'mountains#create'

  get '/mountains/:id/edit' => 'mountains#edit'
  post '/mountains/:id' => 'mountains#update'

  get '/mountains/:id/delete' => 'mountains#delete'


end
