class CreateCardDecks < ActiveRecord::Migration[6.0]
  def change
    create_table :card_decks do |t|

      t.timestamps
    end
  end
end
