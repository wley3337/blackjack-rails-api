class CreateDealerHands < ActiveRecord::Migration[6.0]
  def change
    create_table :dealer_hands do |t|
      t.integer :dealer_id
      t.integer :round_id
      t.boolean :shown
      t.timestamps
    end
  end
end
