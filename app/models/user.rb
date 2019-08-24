class User < ApplicationRecord
    has_many :user_hands
    has_many :rounds, through: :user_hands
    has_secure_password
end
