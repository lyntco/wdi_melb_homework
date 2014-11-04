Rails.application.routes.draw do

  post 'mountains/:id/delete' => 'mountains#delete'

  resources :mountains



end
