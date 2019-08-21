# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






#create 8 decks with 52 cards
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

