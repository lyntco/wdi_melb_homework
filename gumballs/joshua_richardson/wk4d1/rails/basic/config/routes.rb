Rails.application.routes.draw do

  root'pages#welcome'
  # get '/' => 'pages#welcome'

  get '/about' => 'pages#about' # pages controller about method

  get '/funny/:joke' => 'pages#lol'

  get '/calc/:num1/:num2/:operator' => 'calc#calculator'

  get '/dishes' => 'dishes#index'

end
