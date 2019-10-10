class UserHandsController < ApplicationController

    def index 
        UserHands.wins_losses
        #get all the current_user's hands
        #return statistics of users wins and losses
        render json: {success: true }
    end 
end
