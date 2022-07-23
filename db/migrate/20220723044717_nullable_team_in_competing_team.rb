class NullableTeamInCompetingTeam < ActiveRecord::Migration[7.0]
  def change
    change_column :competing_teams, :team_id, :bigint, null: true
  end
end
