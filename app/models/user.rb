class User < ApplicationRecord
    has_many :user_hands
    has_many :rounds, through: :user_hands
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false, message: " is unavailable." }
    # User Schema :
    #     t.string "first_name"
    #     t.string "last_name"
    #     t.string "username"
    #     t.integer "bank"
    #     t.datetime "created_at", precision: 6, null: false
    #     t.datetime "updated_at", precision: 6, null: false
    #   end

    def serialize_user
        {firstName: self.first_name, lastName: self.last_name, bank: self.bank, username: self.username}
    end 
end
