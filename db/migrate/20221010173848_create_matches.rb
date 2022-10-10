class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.bigint :competing_team_home_id
      t.bigint :competing_team_away_id
      t.integer :competing_team_home_goals, default: 0
      t.integer :competing_team_away_goals, default: 0
      t.integer :competing_team_home_penalty_goals, default: 0
      t.integer :competing_team_away_penalty_goals, default: 0
      t.references :location, null: false, foreign_key: true
      t.datetime :datetime
      t.boolean :is_finished, default: false
      t.string :name
      t.references :stadium, null: false, foreign_key: true
      t.references :round, null: false, foreign_key: true

      t.timestamps
    end
  end
end
