class FixingUserReferencesFromRoundRankings < ActiveRecord::Migration[7.0]
  def change
    remove_reference :round_rankings, :user, null: false, foreign_key: true
  end
end
