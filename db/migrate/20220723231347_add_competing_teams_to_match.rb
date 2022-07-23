class AddCompetingTeamsToMatch < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :competing_team_1, :integer
    add_column :matches, :competing_team_2, :integer
  end
end
