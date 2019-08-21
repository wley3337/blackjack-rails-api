class Game < ApplicationRecord
    has_many :game_decks
    has_many :decks, through: :game_decks
    has_many :cards, through: :decks
    has_many :user_hands
    has_many :users, through: :user_hands
end
