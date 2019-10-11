class DealerCard < ApplicationRecord
    belongs_to :card_deck
    belongs_to :dealer_hand
end
