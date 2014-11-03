Rails.application.routes.draw do
  resources :mountains

  get '/mountains' => 'mountains#index'
  get '/mountains/new' => 'mountains#new'
  post '/mountains' => 'mountains#create'
  get '/mountains/:id' => 'mountains#show'
  get '/mountains/:id/edit' => 'mountains#edit'
  post '/mountains:id' => 'mountains#update'
end
