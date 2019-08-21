class Deck < ApplicationRecord
    has_many :card_decks
    has_many :cards, through: :card_decks
    has_many :game_decks
    has_many :games, through: :game_decks
 

end
