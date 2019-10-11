class DealerHand < ApplicationRecord
    belongs_to :dealer 
    belongs_to :round
    has_many :dealer_cards
end
