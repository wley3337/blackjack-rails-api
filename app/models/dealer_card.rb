class DealerCard < ApplicationRecord
    belongs_to :card
    belongs_to :dealer_hand
end
