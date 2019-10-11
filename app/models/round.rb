class Round < ApplicationRecord
   has_many :user_hands
   has_one :dealer_hand
   belongs_to :game
end
