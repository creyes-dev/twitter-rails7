class CreateCompetingTeamScores < ActiveRecord::Migration[7.0]
  def change
    create_table :competing_team_scores do |t|
      t.references :competing_team, null: false, foreign_key: true
      t.integer :points, null: false, default: 0
      t.integer :goals, null: false, default: 0
      t.integer :wins, null: false, default: 0
      t.integer :draws, null: false, default: 0
      t.integer :loses, null: false, default: 0
      t.integer :goals_made, null: false, default: 0
      t.integer :goals_received, null: false, default: 0
      t.integer :goals_differences, null: false, default: 0

      t.timestamps
    end
  end
end
