class CreateGroupTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :group_teams do |t|
      t.references :group, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true
      t.integer :points
      t.integer :wins
      t.integer :draws
      t.integer :loses
      t.integer :goals_made
      t.integer :goals_received
      t.integer :difference_goals

      t.timestamps
    end
  end
end
