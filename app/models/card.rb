class Card < ApplicationRecord
    has_many :card_decks 
    has_many :decks, through: :card_decks
    has_many :user_cards 
    has_many :user_hands, through: :user_cards
    has_many :dealer_cards
    has_many :dealer_hands, through: :dealer_cards
end
