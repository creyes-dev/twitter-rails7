class AddStadisticFieldsToCompetition < ActiveRecord::Migration[7.0]
  def change
    add_column :competitions, :predictions, :integer, default: 0
    add_column :competitions, :success, :integer, default: 0
  end
end
