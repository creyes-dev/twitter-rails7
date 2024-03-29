class CreateCompetitions < ActiveRecord::Migration[7.0]
  def change
    create_table :competitions do |t|
      t.string :name
      t.references :competition_structure, null: false, foreign_key: true
      t.boolean :national_teams
      t.integer :groups
      t.integer :teams_group
      t.integer :rounds
      t.datetime :begin
      t.boolean :active
      t.integer :loops, null: false, default: 1

      t.timestamps
    end
  end
end
