Rails.application.routes.draw do

  root 'pages#index'
  get '/about' => 'pages#about'

end
