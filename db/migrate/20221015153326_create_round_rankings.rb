class CreateRoundRankings < ActiveRecord::Migration[7.0]
  def change
    create_table :round_rankings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :round, null: false, foreign_key: true
      t.integer :place
      t.integer :score

      t.timestamps
    end
    add_index :round_rankings, [:round_id,:user_id], unique: true
  end
end
