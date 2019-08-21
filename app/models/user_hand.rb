class UserHand < ApplicationRecord
    belongs_to :user 
    belongs_to :game
    belongs_to :round
end
