class DropCompetingTeamScores < ActiveRecord::Migration[7.0]
  def up
    drop_table :competing_team_scores
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
