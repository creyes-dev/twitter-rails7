class CreatePredictions < ActiveRecord::Migration[7.0]
  def change
    create_table :predictions do |t|
      t.references :competing_user, null: false, foreign_key: true
      t.references :match, null: false, foreign_key: true
      t.references :prediction_result, null: false, foreign_key: true
      t.integer :competing_team_home_goals
      t.integer :competing_team_away_goals
      t.integer :score_won

      t.timestamps
    end
  end
end
