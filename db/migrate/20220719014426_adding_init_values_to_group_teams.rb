class AddingInitValuesToGroupTeams < ActiveRecord::Migration[7.0]
  def change
    change_column :group_teams, :points, :integer, default: 0, null: false
    change_column :group_teams, :wins, :integer, default: 0, null: false
    change_column :group_teams, :draws, :integer, default: 0, null: false
    change_column :group_teams, :loses, :integer, default: 0, null: false
    change_column :group_teams, :goals_made, :integer, default: 0, null: false
    change_column :group_teams, :goals_received, :integer, default: 0, null: false
    change_column :group_teams, :difference_goals, :integer, default: 0, null: false
  end
end
