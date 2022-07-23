class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.integer :competing_team1_goals, default: 0
      t.integer :competing_team2_goals, default: 0
      t.integer :competing_team1_penalty_goals, default: 0
      t.integer :competing_team2_penalty_goals, default: 0
      t.references :location, null: false, foreign_key: true
      t.datetime :date_time
      t.boolean :is_finished, default: false

      t.timestamps
    end
  end
end
