class DropGroupTeam < ActiveRecord::Migration[7.0]
  def change
    drop_table :group_teams
  end
end
