class AddScoresToCompetingTeam < ActiveRecord::Migration[7.0]
  def change
    add_column :competing_teams, :points, :integer, default: 0
    add_column :competing_teams, :goals, :integer, default: 0
    add_column :competing_teams, :wins, :integer, default: 0
    add_column :competing_teams, :draws, :integer, default: 0
    add_column :competing_teams, :loses, :integer, default: 0
    add_column :competing_teams, :goals_made, :integer, default: 0
    add_column :competing_teams, :goals_received, :integer, default: 0
  end
end
