class User < ApplicationRecord
    has_many :user_hands
    has_many :rounds, through: :user_hands
    has_secure_password
    # User Schema :
    #     t.string "first_name"
    #     t.string "last_name"
    #     t.string "username"
    #     t.integer "bank"
    #     t.datetime "created_at", precision: 6, null: false
    #     t.datetime "updated_at", precision: 6, null: false
    #   end
end
