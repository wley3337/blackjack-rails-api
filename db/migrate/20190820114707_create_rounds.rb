class CreateRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :rounds do |t|
      t.timestamps
      t.integer game_id
    end
  end
end
