class DealerHand < ApplicationRecord
    belongs_to :dealer 
    belongs_to :round
    has_many :dealer_cards
    has_many :cards, through: dealer_cards
end
