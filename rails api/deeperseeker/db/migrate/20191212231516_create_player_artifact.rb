class CreatePlayerArtifact < ActiveRecord::Migration[6.0]
  def change
    create_table :player_artifacts do |t|
      t.integer :player_id
      t.integer :artifact_id
    end
  end
end
