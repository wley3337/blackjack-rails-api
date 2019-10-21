class GamesController < ApplicationController

    #inteded for solo only game
    def create_single
        #create game 
        new_s_game = Game.create()
        #add shoe to game 
        new_s_game.add_shoe_game
        #deal game 
        
        #send single dealer card, and user cards to front

    end 
end
