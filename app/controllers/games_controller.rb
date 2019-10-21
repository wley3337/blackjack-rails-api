class GamesController < ApplicationController

    #inteded for solo only game
    def create_single
        bet = solo_params.to_i
        #create game 
        new_s_game = Game.create()
        #add shoe to game 
        new_s_game.add_shoe_game
        #create round 
        round = Round.create(game: new_s_game)
        dealer = Dealer.create(name: "Bob")
        #deal first round
        new_s_game.deal_round(round, dealer, bet)
        
        #send single dealer card, and user cards to front

    end 


    def solo_params 
        params.require(:solo).permit(:bet)
    end
end
