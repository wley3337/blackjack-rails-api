class UserCard < ApplicationRecord
    belongs_to :user_hand
    belongs_to :card
end
