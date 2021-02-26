Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      post 'signup',to: 'users#create'
      get '/profile', to: 'users#profile'
      get 'persist', to: 'users#profile'
    end
  end
  
  resources :users
  resources :dog_trips
  resources :trips
  resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
