class ChangeColumnNamesFromMatches < ActiveRecord::Migration[7.0]
  def change
    rename_column :matches, :competing_team1_goals, :competing_team_home_goals
    rename_column :matches, :competing_team2_goals, :competing_team_away_goals
    rename_column :matches, :competing_team1_penalty_goals, :competing_team_home_penalty_goals
    rename_column :matches, :competing_team2_penalty_goals, :competing_team_away_penalty_goals
    rename_column :matches, :date_time, :datetime
    rename_column :matches, :competing_team_1_id, :competing_team_home_id
    rename_column :matches, :competing_team_2_id, :competing_team_away_id
  end
end
