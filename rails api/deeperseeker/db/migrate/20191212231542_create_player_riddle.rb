class CreatePlayerRiddle < ActiveRecord::Migration[6.0]
  def change
    create_table :player_riddles do |t|
      t.integer :player_id
      t.integer :riddle_id
    end
  end
end
