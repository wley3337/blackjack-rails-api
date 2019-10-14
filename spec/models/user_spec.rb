require 'rails_helper'

RSpec.describe User, type: :model do

  before(:context) do
    @u1 = build(:user)
  end 
  
  after(:context) do 
    User.destroy_all
  end 
  
  context "#serialize_user" do 
    it "correctly serializes a user" do 
      output = { firstName: "U1", lastName: "U1Last", bank: 1000, username: "u1username"}
      expect(@u1.serialize_user).to eq(output)
    end 
  end 

  context "#wins_losses" do 
    it "returns a hash of reduces wins and losses" do 
      create(:user_hand, user: @u1)
      create(:user_hand, user: @u1)
      output = {wins: 0, losses: 2, bets:[500, 500]} 
      expect(@u1.wins_losses).to eq(output)
    end 
  end 
end
