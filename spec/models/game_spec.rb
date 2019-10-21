require 'rails_helper'

RSpec.describe Game, type: :model do
  before(:all) do 
    suites = ["hearts", "spades", "clubs", "diamonds"]
    ranks = (1..13)
    num_of_decks = (1..8)

    num_of_decks.each do |deck|
        deck = Deck.create!
        suites.each do |suite|
            ranks.each do |rank|
                card = Card.create!(suite: suite, rank: rank)
                deck.cards << card 
            end 
        end
    end 
  end

  after(:all) do 
    Card.destroy_all
    Deck.destroy_all
    CardDeck.destroy_all
  end 

  context "#create_shoe" do 
    it "returns a non-repeating sample from all current cards" do
        new_game = build(:game)
        allow(new_game).to receive(:shoe_depth).and_return(417)
        expect(new_game.create_shoe.length).to eq(416)
    end
  end 

  context "#add_shoe_game" do 
    it "returns a volume of cards that only equal the shoe_depth" do 
        new_game = build(:game)
        allow(new_game).to receive(:shoe_depth).and_return(312)
        expect(new_game.add_shoe_game.length).to eq(312)
    end 
  end
end
