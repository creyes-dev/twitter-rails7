class FixPredictionsIndexes < ActiveRecord::Migration[7.0]
  def change
    add_index :predictions, [:competing_user_id, :match_id], unique: true
  end
end
