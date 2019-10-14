class GameDeck < ApplicationRecord
    belongs_to :game 
    belongs_to :card_deck 

end
