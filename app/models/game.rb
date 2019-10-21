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

    def deal_round(round, dealer, bet)
        byebug
        dh = DealerHand.new(round: round, dealer: dealer)
        ph = UserHand.new(round: round, user: @current_user, win: false)
        #deal player card 1 
        pc_1 = self.deal_card
        ph.card_decks << pc_1
        #deal dealer card 1
        dc_1 = self.deal_card
      
        #deal player card 2 
        pc_2 = self.deal_card
        ph.card_decks << pc_2
        #deal dealer card 2
        dc_2 = self.deal_card

        DealerCard.create(round: round, dealer: dealer, card_deck: dc_1, show: true)
        DealerCard.create(round: round, dealer: dealer, card_deck: dc_2, show: false)

    end 


    def deal_card 
        shoe = self.undelt_shoe
        new_card = shoe.sample
        new_card.delt = true 
        new_card.save 
    end 

    def undelt_shoe 
        GameDeck.where("game_id = ? AND delt = ?", self.id, false )
    end 



end
