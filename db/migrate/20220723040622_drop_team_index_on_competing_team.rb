class DropTeamIndexOnCompetingTeam < ActiveRecord::Migration[7.0]
  def change
    remove_index :competing_teams, name: :index_competing_teams_on_group_id_and_team_id
    remove_index :competing_teams, name: :index_competing_teams_on_team_id
  end
end
