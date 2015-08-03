Rails.application.routes.draw do
  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------
  
  root 'users#index'
  
  get '/signin' => 'sessions#signin'
  get '/sessions/destroy' => 'sessions#destroy'
  get '/sessions/create' => 'sessions#create'
end
