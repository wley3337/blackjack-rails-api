Rails.application.routes.draw do
  post '/login', to: "users#log_in"
  resources :user_cards
  resources :dealer_cards
  resources :card_decks
  resources :decks
  resources :game_decks
  resources :games
  resources :cards
  resources :rounds
  resources :user_hands
  resources :users
  resources :dealer_hands
  resources :dealers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
