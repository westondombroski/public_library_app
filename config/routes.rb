Rails.application.routes.draw do
 root to: "users#index"

  resources :users
 # get '/users/new', to: 'users#new', as: 'new_user'
 # post '/users/', to: 'users#create'
end
