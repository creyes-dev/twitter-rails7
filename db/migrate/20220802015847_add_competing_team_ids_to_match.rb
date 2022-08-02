class AddCompetingTeamIdsToMatch < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :competing_team_1_id, :bigint
    add_column :matches, :competing_team_2_id, :bigint
  end
end
