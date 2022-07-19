class AddingCompositeIndexToGroupTeams < ActiveRecord::Migration[7.0]
  def change
    add_index :group_teams, [:group_id, :team_id], unique: true
  end
end



