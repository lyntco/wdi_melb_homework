Rails.application.routes.draw do
  
  root 'pages#index'
  get '/about' => 'pages#about'

  resources :books
  resources :recipes
  resources :ingredients

end
