class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :leader_board_points
      t.integer :problem_failed_at
      t.timestamps
    end
  end
end
