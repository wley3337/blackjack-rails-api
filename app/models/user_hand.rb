class UserHand < ApplicationRecord
    belongs_to :user 
    belongs_to :round
    has_many :user_cards 
    has_many :card_decks, through: :user_cards
end
