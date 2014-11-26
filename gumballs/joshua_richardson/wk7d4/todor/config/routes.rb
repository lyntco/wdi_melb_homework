Rails.application.routes.draw do

  root 'tasks#index'
  resources :tasks

  post '/tasks/:id/complete' => 'tasks#complete'
  post '/tasks/:id/uncomplete' => 'tasks#uncomplete'

end

