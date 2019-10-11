Rails.application.routes.draw do
  post '/login', to: "users#log_in"
  resources :users, only: [ :create ]
  resources :user_hands, only: [:index]
end
