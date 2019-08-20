class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.integer :user_hand_id
      t.integer :dealer_hand_id
      t.timestamps
    end
  end
end
