class CreateCompetingUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :competing_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :competition, null: false, foreign_key: true
      t.references :competing_team, null: true, foreign_key: true
      t.integer :score, default: 0

      t.timestamps
    end
  end
end
