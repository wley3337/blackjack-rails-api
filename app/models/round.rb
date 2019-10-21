class Round < ApplicationRecord
   has_many :user_hands
   # this association may need to be custom built
   # has_many :user_cards, through: :user_hands
   has_one :dealer_hand
   has_many :dealer_cards, through: :dealer_hand
   belongs_to :game

   def deal_round
      #get shoe
      #sample shoe for dealer card 1
      #sample shoe for user card 1
      #sample shoe for dealer card 2
      #sample shoe for user card 1 
      
   end 
end
