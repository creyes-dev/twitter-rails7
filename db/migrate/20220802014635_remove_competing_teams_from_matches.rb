class RemoveCompetingTeamsFromMatches < ActiveRecord::Migration[7.0]
  def change
    remove_column :matches, :competing_team_1, :integer
    remove_column :matches, :competing_team_2, :integer
  end
end
