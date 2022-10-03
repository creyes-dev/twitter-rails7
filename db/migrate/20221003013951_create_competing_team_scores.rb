class CreateCompetingTeamScores < ActiveRecord::Migration[7.0]
  def change
    create_table :competing_team_scores do |t|
      t.references :competing_team, null: false, foreign_key: true
      t.integer :points, default: 0
      t.integer :goals, default: 0
      t.integer :wins, default: 0
      t.integer :draws, default: 0
      t.integer :loses, default: 0
      t.integer :goals_made, default: 0
      t.integer :goals_received, default: 0
      t.integer :goals_differences, default: 0

      t.timestamps
    end
  end
end
