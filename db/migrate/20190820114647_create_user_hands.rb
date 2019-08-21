class CreateUserHands < ActiveRecord::Migration[6.0]
  def change
    create_table :user_hands do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :round_id
      t.integer :bet
      t.boolean :win
      t.timestamps
    end
  end
end
