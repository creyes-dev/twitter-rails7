class AddStadisticFieldsToCompetingUser < ActiveRecord::Migration[7.0]
  def change
    add_column :competing_users, :predictions, :integer, default: 0
    add_column :competing_users, :success, :integer, default: 0
  end
end
