require 'rails_helper'

RSpec.describe Game, type: :model do
  before(:context) do 
    build(:card_deck)
  end

  after(:context) do 
    Card.destroy_all
    Deck.destroy_all
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
