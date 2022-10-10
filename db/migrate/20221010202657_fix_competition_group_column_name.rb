class FixCompetitionGroupColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :competitions, :groups, :group_amount
  end
end
