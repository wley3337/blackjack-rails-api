class CreateCardDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :card_decks do |t|
      t.integer :card_id
      t.integer :deck_id
      t.timestamps
    end
  end
end
