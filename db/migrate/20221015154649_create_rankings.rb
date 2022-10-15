class CreateRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :rankings do |t|
      t.references :competition, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :place
      t.integer :score

      t.timestamps
    end
    add_index :rankings, [:competition_id,:user_id], unique: true
  end
end
