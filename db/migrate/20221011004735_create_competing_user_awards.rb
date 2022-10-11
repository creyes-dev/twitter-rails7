class CreateCompetingUserAwards < ActiveRecord::Migration[7.0]
  def change
    create_table :competing_user_awards do |t|
      t.references :competing_user, null: false, foreign_key: true
      t.references :competition, foreign_key: true
      t.references :round, foreign_key: true
      t.references :prediction, foreign_key: true
      t.references :award, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
