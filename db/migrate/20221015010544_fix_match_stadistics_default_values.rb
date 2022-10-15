class FixMatchStadisticsDefaultValues < ActiveRecord::Migration[7.0]
  def change
    change_column :match_stadistics, :home_team_won_perc, :decimal, default: 0.0
    change_column :match_stadistics, :away_team_won_perc, :decimal, default: 0.0
    change_column :match_stadistics, :draw_perc, :decimal, default: 0.0
    change_column :match_stadistics, :success_perc, :decimal, default: 0.0
  end
end
