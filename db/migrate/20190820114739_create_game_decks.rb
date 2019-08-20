class CreateGameDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :game_decks do |t|

      t.timestamps
    end
  end
end
