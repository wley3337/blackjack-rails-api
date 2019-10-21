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
    GameDeck.destroy_all
    Game.destroy_all
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

  context "#deal_card" do 
    it "returns card with an updated delt value of true" do 
      new_game = create(:game)
      allow(new_game).to receive(:shoe_depth).and_return(1)
      shoe = new_game.add_shoe_game
      card_before = new_game.game_decks.first
      allow(new_game).to receive(:undelt_shoe).and_return(new_game.game_decks)
      new_game.deal_card
      card_after = new_game.game_decks.first 
      expect(card_after.delt).to eq(!card_before.delt)
    end 
  end
  
  context "#undelt_shoe" do 
    it "only returns cards that are undelt" do
      new_game = create(:game)
      allow(new_game).to receive(:shoe_depth).and_return(2)
      shoe = new_game.add_shoe_game
      first_card = new_game.game_decks.first 
      first_card.delt = true 
      first_card.save 
      expect(new_game.undelt_shoe.length).to be(1) 
    end 

    it "only returns cards for that game" do 
      new_game = create(:game)
      allow(new_game).to receive(:shoe_depth).and_return(2)
      shoe = new_game.add_shoe_game
      new_game_2 = create(:game)
      allow(new_game_2).to receive(:shoe_depth).and_return(1) 
      expect(new_game.undelt_shoe.length).to be(2)
    end

  end
end
