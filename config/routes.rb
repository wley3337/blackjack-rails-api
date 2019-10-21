Rails.application.routes.draw do
  post '/login', to: "users#log_in"
  get '/user', to: "users#show"

  get '/game/solo', to: "games#create_solo"
  resources :users, only: [ :create ]
  resources :user_hands, only: [:index]
end
