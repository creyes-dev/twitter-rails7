class FixCompetitionRoundColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :competitions, :rounds, :round_amount
  end
end
