class Game < ApplicationRecord
    has_many :game_decks
    has_many :card_decks, through: :game_decks
    has_many :rounds


    #generate a randome number between 104 and 416
    def shoe_depth
        rand(104..416)
    end 
    
    #get a random sample of cards from CardDeck without repeating numbers
    def create_shoe
        CardDeck.all.sample(self.shoe_depth)
    end

    def add_shoe_game 
        self.create_shoe.each{ |card_id| self.card_decks << card_id}
    end 

    def deal_round
      
        #deal player card 1 

        #deal dealer card 1

        #deal player card 2 

        #deal dealer card 2
    end 


    def deal_card 
        shoe = self.undelt_shoe
        new_card = shoe.sample
        new_card.delt = true 
        new_card.save 

    end 

    def undelt_shoe 
        GameDecks.where("WHERE game_id = ? AND delt = ?", self.id, false )
    end 

end
