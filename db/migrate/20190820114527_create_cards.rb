class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :suite
      t.integer :rank
      t.timestamps
    end
  end
end
