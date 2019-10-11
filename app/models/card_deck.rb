class CardDeck < ApplicationRecord
    belongs_to :deck 
    belongs_to :card 
    has_many :game_decks
    has_many :games, through: :game_deck
    has_many :user_cards
    has_many :dealer_cardss
end
