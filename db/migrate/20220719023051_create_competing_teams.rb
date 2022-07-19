class CreateCompetingTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :competing_teams do |t|
      t.references :group, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
    add_index :competing_teams, [:group_id, :team_id], unique: true
  end
end
