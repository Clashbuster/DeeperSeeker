class CreateRiddles < ActiveRecord::Migration[6.0]
  def change
    create_table :riddles do |t|
      t.string :name
      t.string :story_text
      t.string :riddle_text
      t.string :correct
      t.string :wrong
      t.integer :points

      t.timestamps
    end
  end
end
