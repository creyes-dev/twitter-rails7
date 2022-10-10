class AddScoresToCompetingUser < ActiveRecord::Migration[7.0]
  def change
    add_column :competing_users, :points, :integer, default: 0
    add_column :competing_users, :goals, :integer, default: 0
    add_column :competing_users, :wins, :integer, default: 0
    add_column :competing_users, :draws, :integer, default: 0
    add_column :competing_users, :loses, :integer, default: 0
    add_column :competing_users, :goals_made, :integer, default: 0
    add_column :competing_users, :goals_received, :integer, default: 0
  end
end
