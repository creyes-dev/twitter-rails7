class CreateMatchStadistics < ActiveRecord::Migration[7.0]
  def change
    create_table :match_stadistics do |t|
      t.references :match, null: false, foreign_key: true
      t.references :department, foreign_key: true
      t.integer :predictions, default: 0
      t.integer :home_team_won, default: 0
      t.integer :draw, default: 0
      t.integer :away_team_won, default: 0
      t.decimal :home_team_won_perc
      t.decimal :draw_perc
      t.decimal :away_team_won_perc
      t.integer :success, default: 0
      t.decimal :success_perc

      t.timestamps
    end
  end
end
