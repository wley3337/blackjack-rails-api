Rails.application.routes.draw do
  post '/login', to: "users#log_in"
  get '/user-statistics', to: "user_hands#index"
end
