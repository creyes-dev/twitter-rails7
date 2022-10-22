class AddingCompetingUserRoundComposedIndex < ActiveRecord::Migration[7.0]
  def change
    add_index :round_rankings, [:round_id,:competing_user_id], unique: true
  end
end
