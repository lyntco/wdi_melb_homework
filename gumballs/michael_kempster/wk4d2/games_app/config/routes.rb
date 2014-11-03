Rails.application.routes.draw do

  get '/games/magiceightball' => 'games#magiceightball'

  get '/games/secretnumber' => 'games#secretnumber'

  get '/games/rockpaperscissors' => 'games#rockpaperscissors'

  resources :games

  post '/car' => 'games#magiceightball'

  post '/secret_answer' => 'games#secretnumber'

  post '/rps_answer' => 'games#rockpaperscissors'

end
