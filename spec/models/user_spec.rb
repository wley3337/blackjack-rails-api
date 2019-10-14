require 'rails_helper'

RSpec.describe User, type: :model do

  before(:context) do
    @u1 = build(:user)
  end 
  
  after(:context) do 
    
  end 
  
  context "#serialize_user" do 
  it "correctly serializes a user" do 
      output = { firstName: "U1", lastName: "U1Last", bank: 1000, username: "u1username"}
      expect(@u1.serialize_user).to eq(output)
    end 
  end 

  # context "#wins_losses" do 
  #   xit "returns a hash of reduces wins and losses" do 
   
      
  #     output = {wins: 2, losses: 2, bets: 1700}
  #     allow(@u1).to receive(:user_hands).and_return(users_hands)
  #     expect(@u1.wins_losses).to eq(output)

  #   end 
  # end 
end
