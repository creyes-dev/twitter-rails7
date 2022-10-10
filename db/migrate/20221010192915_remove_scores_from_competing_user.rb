class RemoveScoresFromCompetingUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :competing_users, :points
    remove_column :competing_users, :goals
    remove_column :competing_users, :wins
    remove_column :competing_users, :draws
    remove_column :competing_users, :loses
    remove_column :competing_users, :goals_made
    remove_column :competing_users, :goals_received
  end
end
