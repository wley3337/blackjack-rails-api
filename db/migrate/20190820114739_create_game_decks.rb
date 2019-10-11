class CreateGameDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :game_decks do |t|
      t.integer :game_id
      t.integer :card_deck_id
      t.timestamps
    end
  end
end
