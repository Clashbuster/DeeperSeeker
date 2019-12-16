class CreateRiddles < ActiveRecord::Migration[6.0]
  def change
    create_table :riddles do |t|
      t.string :name
      t.integer :points
      t.string :story_text
      t.string :riddle_text
      t.string :correct_answer
      t.timestamps
    end
  end
end
