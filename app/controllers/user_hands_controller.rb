class UserHandsController < ApplicationController

    def index 
        
        #get all the current_user's hands
        user_stats = @current_user.wins_losses
        #return statistics of users wins and losses
        render json: {success: true, user_stats: user_stats}
    end 
end
