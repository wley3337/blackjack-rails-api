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


  
    factory :card_deck do 
        suites = ["hearts", "spades", "clubs", "diamonds"]
        ranks = (1..13)
        decks = (1..8)

        decks.each do |deck|
            deck = Deck.create!
            suites.each do |suite|
                ranks.each do |rank|
                    card = Card.create!(suite: suite, rank: rank)
                    deck.cards << card 
                end 
            end
        end 
    end 

  end