FactoryBot.define do
    factory :user do 
        first_name {"U1"}
        last_name {"U1Last"}
        bank {1000}
        username {"u1username"}
        password {"u1123"}
    end 

    factory :dealer do 
        name {"Dealer 1"}
    end 

    factory :game do 

    end 

    factory :round do 
        game 

    end 

    factory :user_hand do 
        user 
        round 
        bet {500}
        win {false}
    end 

  end