Rails.application.routes.draw do
  resources :users
  resources :dog_trips
  resources :trips
  resources :dogs


  post '/sign_up', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'auth#show'
  get 'profile', to: 'users#profile'
  # get 'user_trips', to: 'users#trips'

end