class CreateDealerCards < ActiveRecord::Migration[6.0]
  def change
    create_table :dealer_cards do |t|

      t.timestamps
    end
  end
end
