class UserHand < ApplicationRecord
    belongs_to :user 
    belongs_to :round

    def self.wins_losses
        byebug
        @current_user.id 

        #should return a shape like: 
#         export interface CurrentUserStats{
#     wins: number 
#     losses: number 
#     bets: Array<number>
# }
    end 
end
